part of 'bottom_nav_bloc.dart';

@freezed
class BottomNavState with _$BottomNavState {
  const factory BottomNavState.homeMovie() = _HomeMovieState;
  const factory BottomNavState.homeTv() = _HomeTvState;
  const factory BottomNavState.watchlist() = _WatchlistState;
}
