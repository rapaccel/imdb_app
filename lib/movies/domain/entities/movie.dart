import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  Movie({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
    this.type,
  });

  Movie.watchlist({
    required this.id,
    required this.overview,
    required this.posterPath,
    required this.title,
    this.type,
  });

  Movie toMovie() {
    return Movie.watchlist(
      id: id,
      title: title,
      overview: overview,
      posterPath: posterPath,
      type: type,
    );
  }

  // TvShow toTvShow() {
  //   return TvShow.watchlist(
  //     id: id,
  //     name: title!,
  //     overview: overview!,
  //     posterPath: posterPath,
  //     type: type,
  //   );
  // }

  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int id;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;
  String? type;

  @override
  List<Object?> get props => [
    adult,
    backdropPath,
    genreIds,
    id,
    originalTitle,
    overview,
    popularity,
    posterPath,
    releaseDate,
    title,
    video,
    voteAverage,
    voteCount,
  ];
}
