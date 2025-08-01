part of 'detail_tv_bloc.dart';

@freezed
class DetailTvEvent with _$DetailTvEvent {
  const factory DetailTvEvent.fetch(int id) = _Fetch;
  const factory DetailTvEvent.addToWatchlist(TvShowDetail tv) = _AddToWatchlist;
  const factory DetailTvEvent.removeFromWatchlist(TvShowDetail tv) =
      _RemoveFromWatchlist;
}
