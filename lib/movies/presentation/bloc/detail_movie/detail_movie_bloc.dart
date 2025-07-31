import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imdb_app/movies/domain/entities/movie.dart';
import 'package:imdb_app/movies/domain/entities/movie_detail.dart';
import 'package:imdb_app/movies/usecases/get_movie_detail.dart';
import 'package:imdb_app/movies/usecases/get_movie_recommendations.dart';
import 'package:imdb_app/movies/usecases/get_watchlist_status.dart';
import 'package:imdb_app/movies/usecases/remove_watchlist.dart';
import 'package:imdb_app/movies/usecases/save_watchlist.dart';

part 'detail_movie_event.dart';
part 'detail_movie_state.dart';
part 'detail_movie_bloc.freezed.dart';

class DetailMovieBloc extends Bloc<DetailMovieEvent, DetailMovieState> {
  final GetMovieDetail getMovieDetail;
  final GetMovieRecommendations getMovieRecommendations;
  final GetWatchListStatus getWatchListStatus;
  final SaveWatchlist saveWatchlist;
  final RemoveWatchlist removeWatchlist;
  DetailMovieBloc(
    this.getMovieDetail,
    this.getMovieRecommendations,
    this.getWatchListStatus,
    this.saveWatchlist,
    this.removeWatchlist,
  ) : super(_Initial()) {
    on<DetailMovieEvent>((event, emit) async {
      await event.when(
        fetch: (id) async {
          emit(const DetailMovieState.loading());

          final detailResult = await getMovieDetail.execute(id);
          final recommendationResult = await getMovieRecommendations.execute(
            id,
          );
          await detailResult.fold(
            (failure) async {
              emit(DetailMovieState.error(failure.message));
            },
            (movie) async {
              final recommendations = recommendationResult.getOrElse(() => []);
              final watchlistStatus = await getWatchListStatus.execute(id);
              emit(
                DetailMovieState.loaded(
                  movies: movie,
                  recommendations: recommendations,
                  isAddedToWatchlist: watchlistStatus,
                ),
              );
            },
          );
        },
        addToWatchlist: (movie) async {
          final result = await saveWatchlist.execute(movie);
          final isAdded = await getWatchListStatus.execute(movie.id);
          result.fold(
            (failure) => emit(DetailMovieState.error(failure.message)),
            (_) {
              final currentState = state;
              if (currentState is _Loaded) {
                emit(currentState.copyWith(isAddedToWatchlist: isAdded));
              }
            },
          );
        },
        removeFromWatchlist: (movie) async {
          final result = await removeWatchlist.execute(movie);
          final isAdded = await getWatchListStatus.execute(movie.id);
          result.fold(
            (failure) => emit(DetailMovieState.error(failure.message)),
            (_) {
              final currentState = state;
              if (currentState is _Loaded) {
                emit(currentState.copyWith(isAddedToWatchlist: isAdded));
              }
            },
          );
        },
      );
    });
  }
}
