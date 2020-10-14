import 'package:json_annotation/json_annotation.dart';
part 'trailer_model.g.dart';

@JsonSerializable()
class TrailerModel {
  final String iMDbId;
  final String title;
  final String fullTitle;
  final String type;
  final String year;
  final String videoId;
  final String thumbnailUrl;
  final String linkEmbed;
  final String errorMessage;

  const TrailerModel({
    this.iMDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.videoId,
    this.thumbnailUrl,
    this.linkEmbed,
    this.errorMessage,
  });

  static const fromJsonFactory = _$TrailerModelFromJson;

  factory TrailerModel.fromJson(Map<String, dynamic> json) =>
      _$TrailerModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrailerModelToJson(this);
}
