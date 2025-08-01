part of 'search_tv_bloc.dart';

@freezed
class SearchTvState with _$SearchTvState {
  const factory SearchTvState.loading() = _Loading;
  const factory SearchTvState.loaded(List<TvShow> tvShows) = _Loaded;
  const factory SearchTvState.error(String message) = _Error;
  const factory SearchTvState.empty() = _Empty;
}
