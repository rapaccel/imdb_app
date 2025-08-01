import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdb_app/movies/domain/entities/movie.dart';
import 'package:imdb_app/movies/domain/usecases/get_now_playing_movies.dart';
import 'package:imdb_app/movies/domain/usecases/get_popular_movies.dart';
import 'package:imdb_app/movies/domain/usecases/get_top_rated_movies.dart';

part 'list_movie_event.dart';
part 'list_movie_state.dart';
part 'list_movie_bloc.freezed.dart';

class ListMovieBloc extends Bloc<ListMovieEvent, ListMovieState> {
  final GetNowPlayingMovies getNowPlayingMovies;
  final GetPopularMovies getPopularMovies;
  final GetTopRatedMovies getTopRatedMovies;
  ListMovieBloc(
    this.getNowPlayingMovies,
    this.getPopularMovies,
    this.getTopRatedMovies,
  ) : super(_Initial()) {
    on<ListMovieEvent>((event, emit) async {
      await event.when(
        fetch: () async {
          emit(const ListMovieState.loading());
          final nowPlayingResult = await getNowPlayingMovies.execute();
          final popularResult = await getPopularMovies.execute();
          final topRatedResult = await getTopRatedMovies.execute();

          nowPlayingResult.fold(
            (failure) => emit(ListMovieState.failure(failure.message)),
            (nowPlaying) {
              popularResult.fold(
                (failure) => emit(ListMovieState.failure(failure.message)),
                (popular) {
                  topRatedResult.fold(
                    (failure) => emit(ListMovieState.failure(failure.message)),
                    (topRated) => emit(
                      ListMovieState.success(
                        nowPlaying: nowPlaying,
                        popular: popular,
                        topRated: topRated,
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      );
    });
  }
}
