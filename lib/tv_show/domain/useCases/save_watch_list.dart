import 'package:dartz/dartz.dart';
import 'package:imdb_app/common/failure.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show_detail.dart';
import 'package:imdb_app/tv_show/domain/repositories/tv_repositories.dart';

class SaveWatchListTv {
  final TvRepositories repository;

  SaveWatchListTv(this.repository);

  Future<Either<Failure, String>> execute(TvShowDetail movie) {
    return repository.saveWatchlist(movie);
  }
}
