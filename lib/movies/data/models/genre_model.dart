import 'package:equatable/equatable.dart';
import 'package:imdb_app/movies/domain/entities/genre.dart';

class GenreModel extends Equatable {
  GenreModel({required this.id, required this.name});

  final int id;
  final String name;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      GenreModel(id: json["id"], name: json["name"]);

  Map<String, dynamic> toJson() => {"id": id, "name": name};

  Genre toEntity() {
    return Genre(id: this.id, name: this.name);
  }

  @override
  List<Object?> get props => [id, name];
}
