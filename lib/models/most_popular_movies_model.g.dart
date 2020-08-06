// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'most_popular_movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MostPopularMoviesModel _$MostPopularMoviesModelFromJson(
    Map<String, dynamic> json) {
  return MostPopularMoviesModel(
    (json['listMostPopularMovies'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$MostPopularMoviesModelToJson(
        MostPopularMoviesModel instance) =>
    <String, dynamic>{
      'listMostPopularMovies': instance.listMostPopularMovies,
    };
