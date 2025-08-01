import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdb_app/movies/domain/entities/movie.dart';
import 'package:imdb_app/movies/domain/usecases/get_top_rated_movies.dart';

part 'top_rated_movies_event.dart';
part 'top_rated_movies_state.dart';
part 'top_rated_movies_bloc.freezed.dart';

class TopRatedMoviesBloc
    extends Bloc<TopRatedMoviesEvent, TopRatedMoviesState> {
  final GetTopRatedMovies getTopRatedMovies;
  TopRatedMoviesBloc(this.getTopRatedMovies) : super(_Initial()) {
    on<TopRatedMoviesEvent>((event, emit) async {
      await event.when(
        fetch: () async {
          emit(const TopRatedMoviesState.loading());
          final result = await getTopRatedMovies.execute();
          result.fold(
            (failure) => emit(TopRatedMoviesState.error(failure.message)),
            (movies) {
              if (movies.isEmpty) {
                emit(const TopRatedMoviesState.empty());
              } else {
                emit(TopRatedMoviesState.loaded(movies));
              }
            },
          );
        },
      );
    });
  }
}
