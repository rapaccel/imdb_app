import 'package:equatable/equatable.dart';
import 'package:imdb_app/tv_show/data/models/tv_model.dart';

class TvResponse extends Equatable {
  final List<TvModel> movieList;

  TvResponse({required this.movieList});

  factory TvResponse.fromJson(Map<String, dynamic> json) => TvResponse(
    movieList: List<TvModel>.from(
      (json["results"] as List)
          .map((x) => TvModel.fromJson(x))
          .where((element) => element.posterPath != null),
    ),
  );

  Map<String, dynamic> toJson() => {
    "results": List<dynamic>.from(movieList.map((x) => x.toJson())),
  };

  @override
  List<Object> get props => [movieList];
}
