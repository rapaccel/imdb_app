import 'package:equatable/equatable.dart';
import 'package:imdb_app/movies/data/models/genre_model.dart';
import 'package:imdb_app/tv_show/domain/entities/tv_show_detail.dart';

class TvDetailResponse extends Equatable {
  TvDetailResponse({
    required this.adult,
    required this.backdropPath,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.runtime,
    required this.status,
    required this.tagline,
    required this.name,
    required this.voteAverage,
    required this.voteCount,
  });

  final bool adult;
  final String? backdropPath;
  final List<GenreModel> genres;
  final String homepage;
  final int id;
  final String? imdbId;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final int runtime;
  final String status;
  final String tagline;
  final String name;
  final double voteAverage;
  final int voteCount;

  factory TvDetailResponse.fromJson(Map<String, dynamic> json) =>
      TvDetailResponse(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        genres: List<GenreModel>.from(
          json["genres"].map((x) => GenreModel.fromJson(x)),
        ),
        homepage: json["homepage"],
        id: json["id"],
        imdbId: json["imdb_id"],
        originalLanguage: json["original_language"],
        originalName: json["original_name"],
        overview: json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        releaseDate: json["first_air_date"],
        runtime: json["runtime"] ?? 0,
        status: json["status"],
        tagline: json["tagline"],
        name: json["name"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
      );

  Map<String, dynamic> toJson() => {
    "adult": adult,
    "backdrop_path": backdropPath,
    "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
    "homepage": homepage,
    "id": id,
    "imdb_id": imdbId,
    "original_language": originalLanguage,
    "original_name": originalName,
    "overview": overview,
    "popularity": popularity,
    "poster_path": posterPath,
    "release_date": releaseDate,
    "runtime": runtime,
    "status": status,
    "tagline": tagline,
    "name": name,
    "vote_average": voteAverage,
    "vote_count": voteCount,
  };

  TvShowDetail toEntity() {
    return TvShowDetail(
      adult: this.adult,
      backdropPath: this.backdropPath,
      genres: this.genres.map((genre) => genre.toEntity()).toList(),
      id: this.id,
      originalName: this.originalName,
      overview: this.overview,
      posterPath: this.posterPath,
      releaseDate: this.releaseDate,
      runtime: this.runtime,
      name: this.name,
      voteAverage: this.voteAverage,
      voteCount: this.voteCount,
    );
  }

  @override
  List<Object?> get props => [
    adult,
    backdropPath,
    genres,
    homepage,
    id,
    imdbId,
    originalLanguage,
    originalName,
    overview,
    popularity,
    posterPath,
    releaseDate,
    runtime,
    status,
    tagline,
    name,
    voteAverage,
    voteCount,
  ];
}
