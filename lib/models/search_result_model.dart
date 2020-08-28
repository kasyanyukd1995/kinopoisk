import 'package:json_annotation/json_annotation.dart';
import 'package:kinopoisk/models/result_search_list_model.dart';

part 'search_result_model.g.dart';

@JsonSerializable()
class SearchResultModel {
  final String searchType;
  final String expression;
  final List<ResultSearchListModel> results;
  final String errorMessage;

  const SearchResultModel({
    this.searchType,
    this.expression,
    this.results,
    this.errorMessage,
  });

  static const fromJsonFactory = _$SearchResultModelFromJson;

  factory SearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultModelToJson(this);
}
