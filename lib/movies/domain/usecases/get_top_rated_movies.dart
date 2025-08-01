import 'package:dartz/dartz.dart';
import 'package:imdb_app/common/failure.dart';
import 'package:imdb_app/movies/domain/entities/movie.dart';
import 'package:imdb_app/movies/domain/repositories/movie_repository.dart';

class GetTopRatedMovies {
  final MovieRepository repository;

  GetTopRatedMovies(this.repository);

  Future<Either<Failure, List<Movie>>> execute() {
    return repository.getTopRatedMovies();
  }
}
