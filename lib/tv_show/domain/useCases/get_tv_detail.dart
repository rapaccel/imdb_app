import 'package:dartz/dartz.dart';
import 'package:imdb_app/common/failure.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show_detail.dart';
import 'package:imdb_app/tv_show/domain/repositories/tv_repositories.dart';

class GetTvDetail {
  final TvRepositories repository;

  GetTvDetail(this.repository);

  Future<Either<Failure, TvShowDetail>> execute(int id) {
    return repository.getTvShowDetail(id);
  }
}
