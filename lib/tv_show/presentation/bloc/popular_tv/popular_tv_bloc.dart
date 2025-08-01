import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_popular_tv.dart';

part 'popular_tv_event.dart';
part 'popular_tv_state.dart';
part 'popular_tv_bloc.freezed.dart';

class PopularTvBloc extends Bloc<PopularTvEvent, PopularTvState> {
  final GetPopularTv getPopularTv;
  PopularTvBloc(this.getPopularTv) : super(_Initial()) {
    on<PopularTvEvent>((event, emit) async {
      await event.map(
        fetch: (e) async {
          emit(_Loading());
          final result = await getPopularTv.execute();
          result.fold((failure) => emit(_Error(failure.message)), (tvShows) {
            if (tvShows.isEmpty) {
              emit(_Empty());
            } else {
              emit(_Loaded(tvShows));
            }
          });
        },
      );
    });
  }
}
