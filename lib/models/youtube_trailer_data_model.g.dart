// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_trailer_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YouTubeTrailerDataModel _$YouTubeTrailerDataModelFromJson(
    Map<String, dynamic> json) {
  return YouTubeTrailerDataModel(
    videoUrl: json['videoUrl'] as String,
    errorMessage: json['errorMessage'] as String,
  );
}

Map<String, dynamic> _$YouTubeTrailerDataModelToJson(
        YouTubeTrailerDataModel instance) =>
    <String, dynamic>{
      'videoUrl': instance.videoUrl,
      'errorMessage': instance.errorMessage,
    };
