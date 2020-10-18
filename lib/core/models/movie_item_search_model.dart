import 'package:json_annotation/json_annotation.dart';

part 'movie_item_search_model.g.dart';

@JsonSerializable()
class MovieItemSearchModel {
  final String id;
  final String image;
  final String title;
  final String description;

  const MovieItemSearchModel({
    this.id,
    this.title,
    this.image,
    this.description,
  });

  static const fromJsonFactory = _$ResultMovieItemSearchModelFromJson;

  factory MovieItemSearchModel.fromJson(Map<String, dynamic> json) =>
      _$ResultMovieItemSearchModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieItemSearchModelToJson(this);
}
