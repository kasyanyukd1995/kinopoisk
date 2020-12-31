import 'package:json_annotation/json_annotation.dart';
import 'package:kinopoisk/core/models/index.dart';

part 'favourites_movies_wrapper.g.dart';

@JsonSerializable()
class FavouritesMoviesWrapper {
  @JsonKey(name: 'key')
  final String key;
  @JsonKey(name: 'movies')
  final List<MovieModel> movies;

  FavouritesMoviesWrapper({
    this.key,
    this.movies,
  });

  static const fromJsonFactory = _$FavouritesMoviesWrapperFromJson;

  factory FavouritesMoviesWrapper.fromJson(Map<String, dynamic> json) =>
      _$FavouritesMoviesWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$FavouritesMoviesWrapperToJson(this);
}
