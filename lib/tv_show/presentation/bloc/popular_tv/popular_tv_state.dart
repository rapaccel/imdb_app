part of 'popular_tv_bloc.dart';

@freezed
class PopularTvState with _$PopularTvState {
  const factory PopularTvState.initial() = _Initial;
  const factory PopularTvState.loading() = _Loading;
  const factory PopularTvState.loaded(List<TvShow> tvShows) = _Loaded;
  const factory PopularTvState.error(String message) = _Error;
  const factory PopularTvState.empty() = _Empty;
}
