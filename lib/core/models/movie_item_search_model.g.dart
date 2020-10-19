// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_item_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieItemSearchModel _$MovieItemSearchModelFromJson(Map<String, dynamic> json) {
  return MovieItemSearchModel(
    id: json['id'] as String,
    title: json['title'] as String,
    image: json['image'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$MovieItemSearchModelToJson(
        MovieItemSearchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
    };
