// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultModel _$SearchResultModelFromJson(Map<String, dynamic> json) {
  return SearchResultModel(
    searchType: json['searchType'] as String,
    expression: json['expression'] as String,
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : ResultSearchListModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    errorMessage: json['errorMessage'] as String,
  );
}

Map<String, dynamic> _$SearchResultModelToJson(SearchResultModel instance) =>
    <String, dynamic>{
      'searchType': instance.searchType,
      'expression': instance.expression,
      'results': instance.results,
      'errorMessage': instance.errorMessage,
    };
