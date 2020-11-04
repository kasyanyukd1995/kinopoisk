import 'package:json_annotation/json_annotation.dart';
import 'package:kinopoisk/core/models/similar_movie_model.dart';
import 'package:kinopoisk/core/models/trailer_model.dart';

import 'actor_model.dart';

part 'title_model.g.dart';

@JsonSerializable()
class TitleModel {
  final String id;
  final String title;
  final String year;
  final String image;
  final String runtimeStr;

  final String plot;
  final String directors;
  final String writers;
  final String stars;
  final List<ActorModel> actorList;
  final String genres;
  final String countries;
  final String imDbRating;

  final List<SimilarMovieModel> similars;

  const TitleModel({
    this.id,
    this.title,
    this.year,
    this.image,
    this.runtimeStr,
    this.plot,
    this.directors,
    this.writers,
    this.stars,
    this.actorList,
    this.genres,
    this.countries,
    this.imDbRating,
    this.similars,
  });

  static const fromJsonFactory = _$TitleModelFromJson;

  factory TitleModel.fromJson(Map<String, dynamic> json) =>
      _$TitleModelFromJson(json);

  Map<String, dynamic> toJson() => _$TitleModelToJson(this);
}
