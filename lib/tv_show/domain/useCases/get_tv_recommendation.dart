import 'package:dartz/dartz.dart';
import 'package:imdb_app/common/failure.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/domain/repositories/tv_repositories.dart';

class GetTvRecommendation {
  final TvRepositories tvRepositories;

  GetTvRecommendation(this.tvRepositories);

  Future<Either<Failure, List<TvShow>>> execute(id) {
    return tvRepositories.getTvRecommendation(id);
  }
}
