import 'package:equatable/equatable.dart';
import 'package:imdb_app/movies/domain/entities/genre.dart';

class TvShowDetail extends Equatable {
  TvShowDetail({
    required this.adult,
    required this.backdropPath,
    required this.genres,
    required this.id,
    required this.originalName,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.runtime,
    required this.name,
    required this.voteAverage,
    required this.voteCount,
  });

  final bool adult;
  final String? backdropPath;
  final List<Genre> genres;
  final int id;
  final String originalName;
  final String overview;
  final String posterPath;
  final String releaseDate;
  final int runtime;
  final String name;
  final double voteAverage;
  final int voteCount;

  @override
  List<Object?> get props => [
    adult,
    backdropPath,
    genres,
    id,
    originalName,
    overview,
    posterPath,
    releaseDate,
    name,
    voteAverage,
    voteCount,
  ];
}
