part of 'list_tv_bloc.dart';

@freezed
class ListTvState with _$ListTvState {
  const factory ListTvState.initial() = _Initial;
  const factory ListTvState.loading() = _Loading;
  const factory ListTvState.loaded({
    required List<TvShow> tvShows,
    required List<TvShow> popularTvShows,
    required List<TvShow> topRatedTvShows,
  }) = _Loaded;
  const factory ListTvState.error(String message) = _Error;
  const factory ListTvState.empty() = _Empty;
}
