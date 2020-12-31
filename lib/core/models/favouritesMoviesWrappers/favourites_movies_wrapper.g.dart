// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourites_movies_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavouritesMoviesWrapper _$FavouritesMoviesWrapperFromJson(
    Map<String, dynamic> json) {
  return FavouritesMoviesWrapper(
    key: json['key'] as String,
    movies: (json['movies'] as List)
        ?.map((e) =>
            e == null ? null : MovieModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FavouritesMoviesWrapperToJson(
        FavouritesMoviesWrapper instance) =>
    <String, dynamic>{
      'key': instance.key,
      'movies': instance.movies,
    };
