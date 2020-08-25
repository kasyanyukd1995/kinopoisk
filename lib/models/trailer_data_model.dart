import 'package:json_annotation/json_annotation.dart';
part 'trailer_data_model.g.dart';

@JsonSerializable()
class TrailerDataModel {
  final String iMDbId;
  final String title;
  final String fullTitle;
  final String type;
  final String year;
  final String videoId;
  final String thumbnailUrl;
  final String errorMessage;

  const TrailerDataModel({
    this.iMDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.videoId,
    this.thumbnailUrl,
    this.errorMessage,
  });

  static const fromJsonFactory = _$TrailerDataModelFromJson;

  factory TrailerDataModel.fromJson(Map<String, dynamic> json) =>
      _$TrailerDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrailerDataModelToJson(this);
}
