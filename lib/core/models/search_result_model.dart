import 'package:json_annotation/json_annotation.dart';

import 'movie_item_search_model.dart';

part 'search_result_model.g.dart';

@JsonSerializable()
class SearchResultModel {
  final List<MovieItemSearchModel> results;

  const SearchResultModel({
    this.results,
  });

  static const fromJsonFactory = _$SearchResultModelFromJson;

  factory SearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultModelToJson(this);
}
