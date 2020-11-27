// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimilarMovieModel _$SimilarMovieModelFromJson(Map<String, dynamic> json) {
  return SimilarMovieModel(
    id: json['id'] as String,
    title: json['title'] as String,
    image: json['image'] as String,
    imDbRating: json['imDbRating'] as String,
  );
}

Map<String, dynamic> _$SimilarMovieModelToJson(SimilarMovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imDbRating': instance.imDbRating,
    };
