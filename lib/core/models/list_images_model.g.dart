// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_images_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListImagesModel _$ListImagesModelFromJson(Map<String, dynamic> json) {
  return ListImagesModel(
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : ImageModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ListImagesModelToJson(ListImagesModel instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
