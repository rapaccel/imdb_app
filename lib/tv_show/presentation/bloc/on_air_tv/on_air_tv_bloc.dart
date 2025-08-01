import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_on_air_tv.dart';

part 'on_air_tv_event.dart';
part 'on_air_tv_state.dart';
part 'on_air_tv_bloc.freezed.dart';

class OnAirTvBloc extends Bloc<OnAirTvEvent, OnAirTvState> {
  final GetOnAirTv getOnAirTv;
  OnAirTvBloc(this.getOnAirTv) : super(_Initial()) {
    on<OnAirTvEvent>((event, emit) async {
      await event.map(
        fetch: (e) async {
          emit(_Loading());
          final result = await getOnAirTv.execute();
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
