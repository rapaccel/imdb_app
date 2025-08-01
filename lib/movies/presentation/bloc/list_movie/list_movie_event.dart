part of 'list_movie_bloc.dart';

@freezed
class ListMovieEvent with _$ListMovieEvent {
  const factory ListMovieEvent.fetch() = _Fetch;
}
