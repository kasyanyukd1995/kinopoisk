import 'package:json_annotation/json_annotation.dart';

part 'move_model.g.dart';

@JsonSerializable()
class MoveModel {
  final String id;
  final String title;
  final String description;

  MoveModel(
    this.id,
    this.title,
    this.description,
  );

  static const fromJsonFactory = _$MoveModelFromJson;

  factory MoveModel.fromJson(Map<String, dynamic> json) =>
      _$MoveModelFromJson(json);

  Map<String, dynamic> toJson() => _$MoveModelToJson(this);
}
