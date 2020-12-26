// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_cache_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataCacheWrapper _$DataCacheWrapperFromJson(Map<String, dynamic> json) {
  return DataCacheWrapper(
    key: json['key'] as String,
    lastUpdatedDate: json['lastUpdatedDate'] == null
        ? null
        : DateTime.parse(json['lastUpdatedDate'] as String),
    movies: (json['movies'] as List)
        ?.map((e) =>
            e == null ? null : MovieModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataCacheWrapperToJson(DataCacheWrapper instance) =>
    <String, dynamic>{
      'key': instance.key,
      'lastUpdatedDate': instance.lastUpdatedDate?.toIso8601String(),
      'movies': instance.movies,
    };
