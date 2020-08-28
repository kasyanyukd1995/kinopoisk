import 'package:json_annotation/json_annotation.dart';
import 'package:kinopoisk/models/actor_model.dart';

part 'title_data_model.g.dart';

@JsonSerializable()
class TitleDataModel {
  final String id;
  final String title;
  final String year;
  final String image;
  final String runtimeStr;
  final String releaseDate;
  final String plot;
  final String directors;
  final String writers;
  final String stars;
  final List<ActorModel> actorList;
  final String genres;
  final String countries;
  final String imDbRating;
  final TitleDataModel trailer;

  const TitleDataModel({
    this.id,
    this.title,
    this.year,
    this.image,
    this.runtimeStr,
    this.releaseDate,
    this.plot,
    this.directors,
    this.writers,
    this.stars,
    this.actorList,
    this.genres,
    this.countries,
    this.imDbRating,
    this.trailer,
  });

  static const fromJsonFactory = _$TitleDataModelFromJson;

  factory TitleDataModel.fromJson(Map<String, dynamic> json) =>
      _$TitleDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$TitleDataModelToJson(this);
}
