// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrailerModel _$TrailerModelFromJson(Map<String, dynamic> json) {
  return TrailerModel(
    iMDbId: json['iMDbId'] as String,
    title: json['title'] as String,
    fullTitle: json['fullTitle'] as String,
    type: json['type'] as String,
    year: json['year'] as String,
    videoId: json['videoId'] as String,
    thumbnailUrl: json['thumbnailUrl'] as String,
    linkEmbed: json['linkEmbed'] as String,
    errorMessage: json['errorMessage'] as String,
  );
}

Map<String, dynamic> _$TrailerModelToJson(TrailerModel instance) =>
    <String, dynamic>{
      'iMDbId': instance.iMDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'videoId': instance.videoId,
      'thumbnailUrl': instance.thumbnailUrl,
      'linkEmbed': instance.linkEmbed,
      'errorMessage': instance.errorMessage,
    };
