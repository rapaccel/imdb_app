import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:imdb_app/movies/data/datasources/db/database_helper.dart';
import 'package:imdb_app/movies/data/datasources/movie_local_data_source.dart';
import 'package:imdb_app/movies/data/datasources/movie_remote_data_source.dart';
import 'package:imdb_app/movies/data/repositories/movie_repository_impl.dart';
import 'package:imdb_app/movies/domain/repositories/movie_repository.dart';
import 'package:imdb_app/movies/domain/usecases/get_movie_detail.dart';
import 'package:imdb_app/movies/domain/usecases/get_movie_recommendations.dart';
import 'package:imdb_app/movies/domain/usecases/get_now_playing_movies.dart';
import 'package:imdb_app/movies/domain/usecases/get_popular_movies.dart';
import 'package:imdb_app/movies/domain/usecases/get_top_rated_movies.dart';
import 'package:imdb_app/movies/domain/usecases/get_watchlist_movies.dart';
import 'package:imdb_app/movies/domain/usecases/get_watchlist_status.dart';
import 'package:imdb_app/movies/domain/usecases/remove_watchlist.dart';
import 'package:imdb_app/movies/domain/usecases/save_watchlist.dart';
import 'package:imdb_app/movies/domain/usecases/search_movies.dart';
import 'package:imdb_app/movies/presentation/bloc/detail_movie/detail_movie_bloc.dart';
import 'package:imdb_app/movies/presentation/bloc/list_movie/list_movie_bloc.dart';
import 'package:imdb_app/movies/presentation/bloc/search_movie/search_movies_bloc.dart';
import 'package:imdb_app/movies/presentation/bloc/watch_list/watch_list_bloc.dart';
import 'package:imdb_app/pages/bottom_nav/bloc/bottom_nav_bloc.dart';
import 'package:imdb_app/tv_show/data/dataSources/tv_remote_data_source.dart';
import 'package:imdb_app/tv_show/data/repositories/tv_repositories_impl.dart';
import 'package:imdb_app/tv_show/domain/repositories/tv_repositories.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_on_air_tv.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_popular_tv.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_top_rated_tv.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_tv_detail.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_tv_recommendation.dart';
import 'package:imdb_app/tv_show/domain/useCases/get_watch_list_status.dart';
import 'package:imdb_app/tv_show/domain/useCases/remove_watch_list.dart';
import 'package:imdb_app/tv_show/domain/useCases/save_watch_list.dart';
import 'package:imdb_app/tv_show/domain/useCases/search_tv_show.dart';
import 'package:imdb_app/tv_show/presentation/bloc/detail_tv/detail_tv_bloc.dart';
import 'package:imdb_app/tv_show/presentation/bloc/list_tv/list_tv_bloc.dart';
import 'package:imdb_app/tv_show/presentation/bloc/search_tv/search_tv_bloc.dart';

final locator = GetIt.instance;

Future<void> init() async {
  // bloc
  locator.registerFactory(() => ListMovieBloc(locator(), locator(), locator()));
  locator.registerFactory(() => SearchMoviesBloc(locator()));
  locator.registerFactory(() => SearchTvBloc(locator()));
  locator.registerFactory(() => WatchListBloc(locator()));
  locator.registerFactory(
    () =>
        DetailMovieBloc(locator(), locator(), locator(), locator(), locator()),
  );
  locator.registerFactory(() => ListTvBloc(locator(), locator(), locator()));
  locator.registerFactory(
    () => DetailTvBloc(locator(), locator(), locator(), locator(), locator()),
  );

  // use case
  locator.registerLazySingleton(() => GetNowPlayingMovies(locator()));
  locator.registerLazySingleton(() => GetPopularMovies(locator()));
  locator.registerLazySingleton(() => GetTopRatedMovies(locator()));
  locator.registerLazySingleton(() => GetMovieDetail(locator()));
  locator.registerLazySingleton(() => GetMovieRecommendations(locator()));
  locator.registerLazySingleton(() => SearchMovies(locator()));
  locator.registerLazySingleton(() => GetWatchListStatus(locator()));
  locator.registerLazySingleton(() => SaveWatchlist(locator()));
  locator.registerLazySingleton(() => RemoveWatchlist(locator()));
  locator.registerLazySingleton(() => GetWatchlistMovies(locator()));
  locator.registerLazySingleton(() => GetOnAirTv(locator()));
  locator.registerLazySingleton(() => GetPopularTv(locator()));
  locator.registerLazySingleton(() => GetTopRatedTv(locator()));
  locator.registerLazySingleton(() => GetTvRecommendation(locator()));
  locator.registerLazySingleton(() => GetTvDetail(locator()));
  locator.registerLazySingleton(() => GetWatchListStatusTv(locator()));
  locator.registerLazySingleton(() => SaveWatchListTv(locator()));
  locator.registerLazySingleton(() => RemoveWatchListTv(locator()));
  locator.registerLazySingleton(() => SearchTvShow(locator()));
  locator.registerLazySingleton(() => BottomNavBloc());

  // repository
  locator.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(
      remoteDataSource: locator(),
      localDataSource: locator(),
    ),
  );
  locator.registerLazySingleton<TvRepositories>(
    () => TvRepositoriesImpl(
      remoteDataSource: locator(),
      localDataSource: locator(),
    ),
  );

  // data sources
  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton<MovieRemoteDataSource>(
    () => MovieRemoteDataSourceImpl(dio: locator()),
  );
  locator.registerLazySingleton<MovieLocalDataSource>(
    () => MovieLocalDataSourceImpl(databaseHelper: locator()),
  );
  locator.registerLazySingleton<TvRemoteDataSource>(
    () => TvRemoteDataSourceImpl(dio: locator()),
  );

  // helper
  locator.registerLazySingleton<DatabaseHelper>(() => DatabaseHelper());
}
