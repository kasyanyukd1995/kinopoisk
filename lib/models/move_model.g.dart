// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoveModel _$MoveModelFromJson(Map<String, dynamic> json) {
  return MoveModel(
    json['id'] as String,
    json['title'] as String,
    json['description'] as String,
  );
}

Map<String, dynamic> _$MoveModelToJson(MoveModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };
