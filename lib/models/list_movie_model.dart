import 'movie_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_movie_model.g.dart';

@JsonSerializable()
class ListMovieModel {
  final List<MovieModel> items;
  final String errorMessage;
  const ListMovieModel({
    this.items,
    this.errorMessage,
  });
  static const fromJsonFactory = _$ListMovieModelFromJson;

  factory ListMovieModel.fromJson(Map<String, dynamic> json) =>
      _$ListMovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListMovieModelToJson(this);
}
