import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/domain/useCases/search_tv_show.dart';

part 'search_tv_event.dart';
part 'search_tv_state.dart';
part 'search_tv_bloc.freezed.dart';

class SearchTvBloc extends Bloc<SearchTvEvent, SearchTvState> {
  final SearchTvShow getSearchTv;
  SearchTvBloc(this.getSearchTv) : super(const SearchTvState.loading()) {
    on<SearchTvEvent>((event, emit) async {
      await event.when(
        onFetched: (query) async {
          emit(const SearchTvState.loading());

          final result = await getSearchTv.execute(query);

          result.fold(
            (failure) => emit(SearchTvState.error(failure.message)),
            (tvShows) => tvShows.isEmpty
                ? emit(const SearchTvState.empty())
                : emit(SearchTvState.loaded(tvShows)),
          );
        },
      );
    });
  }
}
