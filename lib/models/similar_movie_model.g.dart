// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimilarMovieModel _$SimilarMovieModelFromJson(Map<String, dynamic> json) {
  return SimilarMovieModel(
    id: json['id'] as String,
    title: json['title'] as String,
    fullTitle: json['fullTitle'] as String,
    year: json['year'] as String,
    image: json['image'] as String,
    plot: json['plot'] as String,
    directors: json['directors'] as String,
    stars: json['stars'] as String,
    genres: json['genres'] as String,
    imDbRating: json['imDbRating'] as String,
  );
}

Map<String, dynamic> _$SimilarMovieModelToJson(SimilarMovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'year': instance.year,
      'image': instance.image,
      'plot': instance.plot,
      'directors': instance.directors,
      'stars': instance.stars,
      'genres': instance.genres,
      'imDbRating': instance.imDbRating,
    };
