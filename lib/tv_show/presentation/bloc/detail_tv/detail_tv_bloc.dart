import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show_detail.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_tv_detail.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_tv_recommendation.dart';
import 'package:imdb_app/tv_show/domain/useCases/remove_watch_list.dart';
import 'package:imdb_app/tv_show/domain/useCases/save_watch_list.dart';

part 'detail_tv_event.dart';
part 'detail_tv_state.dart';
part 'detail_tv_bloc.freezed.dart';

class DetailTvBloc extends Bloc<DetailTvEvent, DetailTvState> {
  final GetTvDetail getTvDetail;
  final SaveWatchListTv saveWatchListTv;
  final RemoveWatchListTv removeWatchListTv;
  final GetTvRecommendation getTvRecommendation;
  DetailTvBloc(
    this.getTvDetail,
    this.saveWatchListTv,
    this.removeWatchListTv,
    this.getTvRecommendation,
  ) : super(_Initial()) {
    on<DetailTvEvent>((event, emit) async {
      await event.map(
        fetch: (e) async {
          emit(_Loading());
          final result = await getTvDetail.execute(e.id);
          result.fold((failure) => emit(_Error(failure.message)), (
            tvDetail,
          ) async {
            final recommendationsResult = await getTvRecommendation.execute(
              e.id,
            );
            recommendationsResult.fold(
              (failure) => emit(_Error(failure.message)),
              (recommendations) {
                emit(
                  _Loaded(
                    tvDetail: tvDetail,
                    recommendations: recommendations,
                    isAddedToWatchlist: false,
                  ),
                );
              },
            );
          });
        },
        addToWatchlist: (e) async {
          final result = await saveWatchListTv.execute(e.tv);
          result.fold((failure) => emit(_Error(failure.message)), (_) {
            emit(
              _Loaded(
                tvDetail: e.tv,
                recommendations: [],
                isAddedToWatchlist: true,
              ),
            );
          });
        },
        removeFromWatchlist: (e) async {
          final result = await removeWatchListTv.execute(e.tv);
          result.fold((failure) => emit(_Error(failure.message)), (_) {
            emit(
              _Loaded(
                tvDetail: e.tv,
                recommendations: [],
                isAddedToWatchlist: false,
              ),
            );
          });
        },
      );
    });
  }
}
