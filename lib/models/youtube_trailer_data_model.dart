import 'package:json_annotation/json_annotation.dart';
part 'youtube_trailer_data_model.g.dart';

@JsonSerializable()
class YouTubeTrailerDataModel {
  final String videoUrl;
  final String errorMessage;

  const YouTubeTrailerDataModel({
    this.videoUrl,
    this.errorMessage,
  });

  static const fromJsonFactory = _$YouTubeTrailerDataModelFromJson;

  factory YouTubeTrailerDataModel.fromJson(Map<String, dynamic> json) =>
      _$YouTubeTrailerDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$YouTubeTrailerDataModelToJson(this);
}
