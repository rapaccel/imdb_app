part of 'list_movie_bloc.dart';

@freezed
class ListMovieState with _$ListMovieState {
  const factory ListMovieState.initial() = _Initial;
  const factory ListMovieState.loading() = _Loading;
  const factory ListMovieState.success({
    required List<Movie> nowPlaying,
    required List<Movie> popular,
    required List<Movie> topRated,
  }) = _Success;
  const factory ListMovieState.failure(String message) = _Failure;
}
