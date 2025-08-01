import 'package:dartz/dartz.dart';
import 'package:imdb_app/common/failure.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show_detail.dart';

abstract class TvRepositories {
  Future<Either<Failure, List<TvShow>>> getPopularTvShows();
  Future<Either<Failure, List<TvShow>>> getTopRatedTvShows();
  Future<Either<Failure, List<TvShow>>> getOnTheAirTvShows();
  Future<Either<Failure, List<TvShow>>> getTvRecommendation(int id);
  Future<Either<Failure, List<TvShow>>> searchTvShows(String query);
  Future<Either<Failure, TvShowDetail>> getTvShowDetail(int id);
  Future<Either<Failure, String>> saveWatchlist(TvShowDetail movie);
  Future<Either<Failure, String>> removeWatchlist(TvShowDetail movie);
  Future<bool> isAddedToWatchlist(int id);
  Future<Either<Failure, List<TvShow>>> getWatchlistTv();
}
