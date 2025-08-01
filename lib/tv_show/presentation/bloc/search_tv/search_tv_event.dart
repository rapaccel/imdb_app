part of 'search_tv_bloc.dart';

@freezed
class SearchTvEvent with _$SearchTvEvent {
  const factory SearchTvEvent.onFetched(String query) = _OnFetched;
}
