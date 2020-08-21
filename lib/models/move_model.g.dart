// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoveModel _$MoveModelFromJson(Map<String, dynamic> json) {
  return MoveModel(
    id: json['id'] as String,
    rank: json['rank'] as String,
    title: json['title'] as String,
    fullTitle: json['fullTitle'] as String,
    year: json['year'] as String,
    image: json['image'] as String,
    crew: json['crew'] as String,
    imDbRating: json['imDbRating'] as String,
  );
}

Map<String, dynamic> _$MoveModelToJson(MoveModel instance) => <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'year': instance.year,
      'image': instance.image,
      'crew': instance.crew,
      'imDbRating': instance.imDbRating,
    };
