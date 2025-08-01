import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdb_app/movies/domain/entities/movie.dart';
import 'package:imdb_app/movies/domain/usecases/get_popular_movies.dart';

part 'popular_movies_event.dart';
part 'popular_movies_state.dart';
part 'popular_movies_bloc.freezed.dart';

class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  final GetPopularMovies getPopularMovies;
  PopularMoviesBloc(this.getPopularMovies) : super(_Initial()) {
    on<PopularMoviesEvent>((event, emit) async {
      await event.when(
        fetch: () async {
          emit(const PopularMoviesState.loading());
          final result = await getPopularMovies.execute();
          result.fold(
            (failure) => emit(PopularMoviesState.error(failure.message)),
            (movies) {
              if (movies.isEmpty) {
                emit(const PopularMoviesState.empty());
              } else {
                emit(PopularMoviesState.loaded(movies));
              }
            },
          );
        },
      );
    });
  }
}
