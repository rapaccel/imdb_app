part of 'detail_movie_bloc.dart';

@freezed
class DetailMovieState with _$DetailMovieState {
  const factory DetailMovieState.initial() = _Initial;
  const factory DetailMovieState.loading() = _Loading;
  const factory DetailMovieState.loaded({
    required MovieDetail movies,
    required List<Movie> recommendations,
    required bool isAddedToWatchlist,
  }) = _Loaded;
  const factory DetailMovieState.error(String message) = _Error;
  const factory DetailMovieState.empty() = _Empty;
}
