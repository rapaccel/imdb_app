import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_on_air_tv.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_popular_tv.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_top_rated_tv.dart';

part 'list_tv_event.dart';
part 'list_tv_state.dart';
part 'list_tv_bloc.freezed.dart';

class ListTvBloc extends Bloc<ListTvEvent, ListTvState> {
  final GetPopularTv getPopularTv;
  final GetTopRatedTv getTopRatedTv;
  final GetOnAirTv getOnAirTv;
  ListTvBloc(this.getPopularTv, this.getTopRatedTv, this.getOnAirTv)
    : super(_Initial()) {
    on<ListTvEvent>((event, emit) async {
      await event.map(
        fetch: (e) async {
          emit(_Loading());
          final popularResult = await getPopularTv.execute();
          final topRatedResult = await getTopRatedTv.execute();
          final onAirResult = await getOnAirTv.execute();

          emit(
            ListTvState.loaded(
              tvShows: onAirResult.getOrElse(() => []),
              popularTvShows: popularResult.getOrElse(() => []),
              topRatedTvShows: topRatedResult.getOrElse(() => []),
            ),
          );
        },
      );
    });
  }
}
