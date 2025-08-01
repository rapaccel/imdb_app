import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdb_app/movies/domain/entities/movie.dart';
import 'package:imdb_app/movies/domain/usecases/search_movies.dart';
part 'search_movies_event.dart';
part 'search_movies_state.dart';
part 'search_movies_bloc.freezed.dart';

class SearchMoviesBloc extends Bloc<SearchMoviesEvent, SearchMoviesState> {
  final SearchMovies getSearchMovies;
  SearchMoviesBloc(this.getSearchMovies) : super(_Initial()) {
    on<SearchMoviesEvent>((event, emit) async {
      await event.when(
        fetch: (text) async {
          emit(const SearchMoviesState.loading());
          final result = await getSearchMovies.execute(text);
          result.fold(
            (failure) => emit(SearchMoviesState.error(failure.message)),
            (movies) {
              if (movies.isEmpty) {
                emit(const SearchMoviesState.empty());
              } else {
                emit(SearchMoviesState.loaded(movies));
              }
            },
          );
        },
      );
    });
  }
}
