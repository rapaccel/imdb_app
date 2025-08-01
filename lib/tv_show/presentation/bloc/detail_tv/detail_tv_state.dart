part of 'detail_tv_bloc.dart';

@freezed
class DetailTvState with _$DetailTvState {
  const factory DetailTvState.initial() = _Initial;
  const factory DetailTvState.loading() = _Loading;
  const factory DetailTvState.loaded({
    required TvShowDetail tvDetail,
    required List<TvShow> recommendations,
    required bool isAddedToWatchlist,
  }) = _Loaded;
  const factory DetailTvState.error(String message) = _Error;
  const factory DetailTvState.empty() = _Empty;
}
