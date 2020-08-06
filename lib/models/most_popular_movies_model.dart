import 'package:json_annotation/json_annotation.dart';

part 'most_popular_movies_model.g.dart';

@JsonSerializable()
class MostPopularMoviesModel {
  final List<String> listMostPopularMovies;
  MostPopularMoviesModel(
    this.listMostPopularMovies,
  );
  static const fromJsonFactory = _$MostPopularMoviesModelFromJson;

  factory MostPopularMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$MostPopularMoviesModelFromJson(json);

  Map<String, dynamic> toJson() => _$MostPopularMoviesModelToJson(this);
}
