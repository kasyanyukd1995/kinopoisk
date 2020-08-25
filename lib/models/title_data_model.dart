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
  final String plot;
  final String stars;

  final List<ActorModel> actorList;
  final String countries;

  const TitleDataModel({
    this.id,
    this.title,
    this.year,
    this.image,
    this.runtimeStr,
    this.plot,
    this.stars,
    this.actorList,
    this.countries,
  });

  static const fromJsonFactory = _$TitleDataModelFromJson;

  factory TitleDataModel.fromJson(Map<String, dynamic> json) =>
      _$TitleDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$TitleDataModelToJson(this);
}
