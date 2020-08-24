// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailer_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrailerDataModel _$TrailerDataModelFromJson(Map<String, dynamic> json) {
  return TrailerDataModel(
    iMDbId: json['iMDbId'] as String,
    title: json['title'] as String,
    fullTitle: json['fullTitle'] as String,
    type: json['type'] as String,
    year: json['year'] as String,
    videoId: json['videoId'] as String,
    videoUrl: json['videoUrl'] as String,
    errorMessage: json['errorMessage'] as String,
  );
}

Map<String, dynamic> _$TrailerDataModelToJson(TrailerDataModel instance) =>
    <String, dynamic>{
      'iMDbId': instance.iMDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'videoId': instance.videoId,
      'videoUrl': instance.videoUrl,
      'errorMessage': instance.errorMessage,
    };
