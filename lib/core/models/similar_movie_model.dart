import 'package:json_annotation/json_annotation.dart';

part 'similar_movie_model.g.dart';

@JsonSerializable()
class SimilarMovieModel {
  final String id;
  final String title;
  final String image;
  final String imDbRating;

  const SimilarMovieModel({
    this.id,
    this.title,
    this.image,
    this.imDbRating,
  });

  static const fromJsonFactory = _$SimilarMovieModelFromJson;

  factory SimilarMovieModel.fromJson(Map<String, dynamic> json) =>
      _$SimilarMovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$SimilarMovieModelToJson(this);
}
