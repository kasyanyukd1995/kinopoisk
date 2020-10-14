import 'package:json_annotation/json_annotation.dart';

part 'similar_movie_model.g.dart';

@JsonSerializable()
class SimilarMovieModel {
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

  const SimilarMovieModel({
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

  static const fromJsonFactory = _$SimilarMovieModelFromJson;

  factory SimilarMovieModel.fromJson(Map<String, dynamic> json) =>
      _$SimilarMovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$SimilarMovieModelToJson(this);
}
