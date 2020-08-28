import 'package:json_annotation/json_annotation.dart';

part 'result_search_list_model.g.dart';

@JsonSerializable()
class ResultSearchListModel {
  final String id;
  final String resultType;
  final String image;
  final String title;
  final String description;

  const ResultSearchListModel({
    this.id,
    this.resultType,
    this.title,
    this.image,
    this.description,
  });

  static const fromJsonFactory = _$ResultSearchListModelFromJson;

  factory ResultSearchListModel.fromJson(Map<String, dynamic> json) =>
      _$ResultSearchListModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResultSearchListModelToJson(this);
}
