part of 'now_playing_movies_bloc.dart';

@freezed
class NowPlayingMoviesEvent with _$NowPlayingMoviesEvent {
  const factory NowPlayingMoviesEvent.fetch() = _Fetch;
}
