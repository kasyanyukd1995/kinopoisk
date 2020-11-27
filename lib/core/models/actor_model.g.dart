// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActorModel _$ActorModelFromJson(Map<String, dynamic> json) {
  return ActorModel(
    id: json['id'] as String,
    image: json['image'] as String,
    name: json['name'] as String,
    asCharacter: json['asCharacter'] as String,
  );
}

Map<String, dynamic> _$ActorModelToJson(ActorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'asCharacter': instance.asCharacter,
    };
