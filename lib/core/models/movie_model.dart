import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel {
  final String id;
  final String title;
  final String image;
  final String imDbRating;

  const MovieModel({
    this.id,
    this.title,
    this.image,
    this.imDbRating,
  });

  static const fromJsonFactory = _$MovieModelFromJson;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
