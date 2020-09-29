import 'package:json_annotation/json_annotation.dart';

part 'similar_model.g.dart';

@JsonSerializable()
class SimilarModel {
  final String id;
  final String title;
  final String fullTitle;
  final String year;
  final String image;
  final String plot;
  final String directors;
  final String stars;
  final String genres;
  final String imDbRating;

  const SimilarModel({
    this.id,
    this.title,
    this.fullTitle,
    this.year,
    this.image,
    this.plot,
    this.directors,
    this.stars,
    this.genres,
    this.imDbRating,
  });

  static const fromJsonFactory = _$SimilarModelFromJson;

  factory SimilarModel.fromJson(Map<String, dynamic> json) =>
      _$SimilarModelFromJson(json);

  Map<String, dynamic> toJson() => _$SimilarModelToJson(this);
}
