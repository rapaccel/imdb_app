import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_top_rated_tv.dart';

part 'top_rated_tv_event.dart';
part 'top_rated_tv_state.dart';
part 'top_rated_tv_bloc.freezed.dart';

class TopRatedTvBloc extends Bloc<TopRatedTvEvent, TopRatedTvState> {
  final GetTopRatedTv getTopRatedTv;
  TopRatedTvBloc(this.getTopRatedTv) : super(_Initial()) {
    on<TopRatedTvEvent>((event, emit) async {
      await event.map(
        fetch: (e) async {
          emit(_Loading());
          final result = await getTopRatedTv.execute();
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
