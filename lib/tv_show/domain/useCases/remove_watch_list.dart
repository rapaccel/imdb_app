import 'package:dartz/dartz.dart';
import 'package:imdb_app/common/failure.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show_detail.dart';
import 'package:imdb_app/tv_show/domain/repositories/tv_repositories.dart';

class RemoveWatchListTv {
  final TvRepositories repository;
  RemoveWatchListTv(this.repository);
  Future<Either<Failure, String>> execute(TvShowDetail movie) {
    return repository.removeWatchlist(movie);
  }
}
