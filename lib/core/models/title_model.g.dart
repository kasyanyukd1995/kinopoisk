// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleModel _$TitleModelFromJson(Map<String, dynamic> json) {
  return TitleModel(
    id: json['id'] as String,
    title: json['title'] as String,
    year: json['year'] as String,
    image: json['image'] as String,
    runtimeStr: json['runtimeStr'] as String,
    plot: json['plot'] as String,
    directors: json['directors'] as String,
    writers: json['writers'] as String,
    stars: json['stars'] as String,
    actorList: (json['actorList'] as List)
        ?.map((e) =>
            e == null ? null : ActorModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    genres: json['genres'] as String,
    countries: json['countries'] as String,
    imDbRating: json['imDbRating'] as String,
    similars: (json['similars'] as List)
        ?.map((e) => e == null
            ? null
            : SimilarMovieModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TitleModelToJson(TitleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'image': instance.image,
      'runtimeStr': instance.runtimeStr,
      'plot': instance.plot,
      'directors': instance.directors,
      'writers': instance.writers,
      'stars': instance.stars,
      'actorList': instance.actorList,
      'genres': instance.genres,
      'countries': instance.countries,
      'imDbRating': instance.imDbRating,
      'similars': instance.similars,
    };
