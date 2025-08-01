import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/domain/useCases/search_tv_show.dart';
part 'search_tv_event.dart';
part 'search_tv_state.dart';
part 'search_tv_bloc.freezed.dart';

class SearchTvBloc extends Bloc<SearchTvEvent, SearchTvState> {
  final SearchTvShow searchTvShow;
  SearchTvBloc(this.searchTvShow) : super(_Initial()) {
    on<SearchTvEvent>((event, emit) async {
      await event.map(
        search: (e) async {
          emit(_Loading());
          final result = await searchTvShow.execute(e.query);
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
