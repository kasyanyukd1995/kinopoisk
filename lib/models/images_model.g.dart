// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImagesModel _$ImagesModelFromJson(Map<String, dynamic> json) {
  return ImagesModel(
    imDbId: json['imDbId'] as String,
    title: json['title'] as String,
    fullTitle: json['fullTitle'] as String,
    type: json['type'] as String,
    year: json['year'] as String,
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : ImageModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImagesModelToJson(ImagesModel instance) =>
    <String, dynamic>{
      'imDbId': instance.imDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'type': instance.type,
      'year': instance.year,
      'items': instance.items,
    };
