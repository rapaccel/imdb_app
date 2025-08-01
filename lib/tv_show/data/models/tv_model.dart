import 'package:equatable/equatable.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show.dart';

class TvModel extends Equatable {
  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final double popularity;
  final String posterPath;
  final String name;
  final double voteAverage;
  final int voteCount;
  final int? runtime;

  TvModel({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.name,
    required this.voteAverage,
    required this.voteCount,
    required this.runtime,
  });

  factory TvModel.fromJson(Map<String, dynamic> json) => TvModel(
    adult: json["adult"],
    backdropPath: json["backdrop_path"] ?? "",
    genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
    id: json["id"],
    originalName: json["original_name"],
    overview: json["overview"],
    popularity: json["popularity"].toDouble(),
    posterPath: json["poster_path"] ?? "",
    name: json["name"],
    voteAverage: json["vote_average"].toDouble(),
    voteCount: json["vote_count"],
    originalLanguage: json["original_language"],
    runtime: json["runtime"] ?? 0,
  );

  Map<String, dynamic> toJson() => {
    "adult": adult,
    "backdrop_path": backdropPath,
    "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
    "id": id,
    "overview": overview,
    "popularity": popularity,
    "poster_path": posterPath,
    "name": name,
    "original_name": originalName,
    "original_language": originalLanguage,
    "vote_average": voteAverage,
    "vote_count": voteCount,
    "runtime": runtime,
  };

  TvShow toEntity() {
    return TvShow(
      id: this.id,
      name: this.name,
      overview: this.overview,
      posterPath: this.posterPath,
      voteAverage: this.voteAverage,
      voteCount: this.voteCount,
      runtime: this.runtime,
    );
  }

  @override
  List<Object?> get props => [
    adult,
    backdropPath,
    genreIds,
    id,
    originalName,
    overview,
    popularity,
    posterPath,
    name,
    originalLanguage,
    voteAverage,
    voteCount,
    runtime,
  ];
}
