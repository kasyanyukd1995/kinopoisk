import 'package:json_annotation/json_annotation.dart';
import 'package:kinopoisk/core/models/movie_model.dart';

part 'data_cache_wrapper.g.dart';

@JsonSerializable()
class DataCacheWrapper {
  @JsonKey(name: 'key')
  final String key;
  @JsonKey(name: 'lastUpdatedDate')
  final DateTime lastUpdatedDate;
  @JsonKey(name: 'movies')
  final List<MovieModel> movies;

  DataCacheWrapper({
    this.key,
    this.lastUpdatedDate,
    this.movies,
  });

  static const fromJsonFactory = _$DataCacheWrapperFromJson;

  factory DataCacheWrapper.fromJson(Map<String, dynamic> json) =>
      _$DataCacheWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$DataCacheWrapperToJson(this);
}
