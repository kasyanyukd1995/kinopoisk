// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListMovieModel _$ListMovieModelFromJson(Map<String, dynamic> json) {
  return ListMovieModel(
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : MovieModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ListMovieModelToJson(ListMovieModel instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
