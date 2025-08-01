part of 'watch_list_bloc.dart';

@freezed
class WatchListState with _$WatchListState {
  const factory WatchListState.initial() = _Initial;
  const factory WatchListState.loaded({
    required List<Movie> movies,
    required List<TvShow> tvShows,
  }) = _Loaded;
  const factory WatchListState.error(String message) = _Error;
  const factory WatchListState.empty() = _Empty;
}
