// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_search_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultSearchListModel _$ResultSearchListModelFromJson(
    Map<String, dynamic> json) {
  return ResultSearchListModel(
    id: json['id'] as String,
    resultType: json['resultType'] as String,
    title: json['title'] as String,
    image: json['image'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$ResultSearchListModelToJson(
        ResultSearchListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resultType': instance.resultType,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
    };
