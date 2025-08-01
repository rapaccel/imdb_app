part of 'on_air_tv_bloc.dart';

@freezed
class OnAirTvState with _$OnAirTvState {
  const factory OnAirTvState.initial() = _Initial;
  const factory OnAirTvState.loading() = _Loading;
  const factory OnAirTvState.loaded(List<TvShow> tvShows) = _Loaded;
  const factory OnAirTvState.error(String message) = _Error;
  const factory OnAirTvState.empty() = _Empty;
}
