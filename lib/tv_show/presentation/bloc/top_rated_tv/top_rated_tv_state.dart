part of 'top_rated_tv_bloc.dart';

@freezed
class TopRatedTvState with _$TopRatedTvState {
  const factory TopRatedTvState.initial() = _Initial;
  const factory TopRatedTvState.loading() = _Loading;
  const factory TopRatedTvState.loaded(List<TvShow> tvShows) = _Loaded;
  const factory TopRatedTvState.error(String message) = _Error;
  const factory TopRatedTvState.empty() = _Empty;
}
