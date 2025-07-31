part of 'detail_movie_bloc.dart';

@freezed
class DetailMovieEvent with _$DetailMovieEvent {
  const factory DetailMovieEvent.fetch(int id) = _Fetch;
  const factory DetailMovieEvent.addToWatchlist(MovieDetail movie) =
      _AddToWatchlist;
  const factory DetailMovieEvent.removeFromWatchlist(MovieDetail movie) =
      _RemoveFromWatchlist;
}
