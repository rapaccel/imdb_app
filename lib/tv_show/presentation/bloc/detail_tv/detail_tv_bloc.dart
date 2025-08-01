import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show_detail.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_tv_detail.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_tv_recommendation.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_watch_list_status.dart';
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
  final GetWatchListStatusTv getWatchlistStatus;

  DetailTvBloc(
    this.getTvDetail,
    this.saveWatchListTv,
    this.removeWatchListTv,
    this.getTvRecommendation,
    this.getWatchlistStatus,
  ) : super(const DetailTvState.initial()) {
    on<DetailTvEvent>((event, emit) async {
      await event.when(
        fetch: (id) async {
          emit(const DetailTvState.loading());
          final detailResult = await getTvDetail.execute(id);
          final recommendationsResult = await getTvRecommendation.execute(id);
          final watchlistStatus = await getWatchlistStatus.execute(id);

          detailResult.fold(
            (failure) => emit(DetailTvState.error(failure.message)),
            (tvDetail) {
              recommendationsResult.fold(
                (failure) => emit(DetailTvState.error(failure.message)),
                (recommendations) {
                  emit(
                    DetailTvState.loaded(
                      tvDetail: tvDetail,
                      recommendations: recommendations,
                      isAddedToWatchlist: watchlistStatus,
                    ),
                  );
                },
              );
            },
          );
        },
        addToWatchlist: (tv) async {
          final result = await saveWatchListTv.execute(tv);
          result.fold((failure) => emit(DetailTvState.error(failure.message)), (
            _,
          ) {
            final currentState = state;
            if (currentState is _Loaded) {
              emit(currentState.copyWith(isAddedToWatchlist: true));
            }
          });
        },
        removeFromWatchlist: (tv) async {
          final result = await removeWatchListTv.execute(tv);
          result.fold((failure) => emit(DetailTvState.error(failure.message)), (
            _,
          ) {
            final currentState = state;
            if (currentState is _Loaded) {
              emit(currentState.copyWith(isAddedToWatchlist: false));
            }
          });
        },
      );
    });
  }
}
