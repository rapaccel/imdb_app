import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:imdb_app/common/exception.dart';
import 'package:imdb_app/common/failure.dart';
import 'package:imdb_app/movies/data/datasources/movie_local_data_source.dart';
import 'package:imdb_app/movies/data/models/movie_table.dart';
import 'package:imdb_app/tv_show/data/dataSources/tv_remote_data_source.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show_detail.dart';
import 'package:imdb_app/tv_show/domain/repositories/tv_repositories.dart';

class TvRepositoriesImpl implements TvRepositories {
  final TvRemoteDataSource remoteDataSource;
  final MovieLocalDataSource localDataSource;

  TvRepositoriesImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<TvShow>>> getOnTheAirTvShows() async {
    try {
      final result = await remoteDataSource.getOnTheAirTvShows();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure('Failed to fetch data from server'));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<TvShow>>> getPopularTvShows() async {
    try {
      final result = await remoteDataSource.getPopularTvShows();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure('Failed to fetch data from server'));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<TvShow>>> getTopRatedTvShows() async {
    try {
      final result = await remoteDataSource.getTopRatedTvShows();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure('Failed to fetch data from server'));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<TvShow>>> getTvRecommendation(int id) async {
    try {
      final result = await remoteDataSource.getTvShowRecommendations(id);
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure('Failed to fetch data from server'));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<TvShow>>> searchTvShows(String query) async {
    try {
      final result = await remoteDataSource.searchTvShows(query);
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure(''));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, TvShowDetail>> getTvShowDetail(int id) async {
    try {
      final result = await remoteDataSource.getTvShowDetail(id);
      return Right(result.toEntity());
    } on ServerException {
      return Left(ServerFailure('Failed to fetch data from server'));
    } on SocketException {
      return Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, String>> removeWatchlist(TvShowDetail movie) async {
    try {
      final result = await localDataSource.removeWatchlist(
        MovieTable.fromTvEntity(movie),
      );
      return Right(result);
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    }
  }

  @override
  Future<bool> isAddedToWatchlist(int id) async {
    final result = await localDataSource.getMovieById(id);
    return result != null;
  }

  @override
  Future<Either<Failure, List<TvShow>>> getWatchlistTv() async {
    final result = await localDataSource.getWatchlistMovies();
    return Right(result.map((data) => data.toTvShowEntity()).toList());
  }

  @override
  Future<Either<Failure, String>> saveWatchlist(TvShowDetail movie) async {
    try {
      final result = await localDataSource.insertWatchlist(
        MovieTable.fromTvEntity(movie),
      );
      return Right(result);
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      throw e;
    }
  }
}
