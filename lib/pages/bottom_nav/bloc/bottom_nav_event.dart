part of 'bottom_nav_bloc.dart';

@freezed
class BottomNavEvent with _$BottomNavEvent {
  const factory BottomNavEvent.homeMovie() = _HomeMovie;
  const factory BottomNavEvent.homeTv() = _HomeTv;
  const factory BottomNavEvent.watchlist() = _Watchlist;
}
