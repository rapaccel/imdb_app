import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';
part 'bottom_nav_bloc.freezed.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(const BottomNavState.homeMovie()) {
    on<BottomNavEvent>((event, emit) {
      event.map(
        homeMovie: (_) => emit(const BottomNavState.homeMovie()),
        homeTv: (_) => emit(const BottomNavState.homeTv()),
        watchlist: (_) => emit(const BottomNavState.watchlist()),
      );
    });
  }
}
