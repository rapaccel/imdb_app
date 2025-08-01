import 'package:equatable/equatable.dart';
import 'package:imdb_app/movies/domain/entities/movie.dart';
import 'package:imdb_app/movies/domain/entities/movie_detail.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show_detail.dart';

import 'movie_model.dart';

class MovieTable extends Equatable {
  final int id;
  final String? title;
  final String? posterPath;
  final String? overview;
  final String? type;

  MovieTable({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.overview,
    this.type,
  });

  factory MovieTable.fromEntity(MovieDetail movie) => MovieTable(
    id: movie.id,
    title: movie.title,
    posterPath: movie.posterPath,
    overview: movie.overview,
    type: "movie",
  );

  factory MovieTable.fromTvEntity(TvShowDetail tvShow) => MovieTable(
    id: tvShow.id,
    title: tvShow.name,
    posterPath: tvShow.posterPath,
    overview: tvShow.overview,
    type: "tv_show",
  );

  factory MovieTable.fromMap(Map<String, dynamic> map) => MovieTable(
    id: map['id'],
    title: map['title'],
    posterPath: map['posterPath'],
    overview: map['overview'],
    type: map['type'],
  );

  factory MovieTable.fromDTO(MovieModel movie) => MovieTable(
    id: movie.id,
    title: movie.title,
    posterPath: movie.posterPath,
    overview: movie.overview,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'posterPath': posterPath,
    'overview': overview,
  };

  Map<String, dynamic> insert() => {
    'id': id,
    'title': title,
    'posterPath': posterPath,
    'overview': overview,
    'type': type,
  };

  Movie toEntity() => Movie.watchlist(
    id: id,
    overview: overview,
    posterPath: posterPath,
    title: title,
    type: type,
  );

  TvShow toTvShowEntity() => TvShow.watchlist(
    id: id,
    overview: overview ?? '',
    posterPath: posterPath ?? '',
    name: title ?? '',
    type: type,
  );

  @override
  // TODO: implement props
  List<Object?> get props => [id, title, posterPath, overview];
}
