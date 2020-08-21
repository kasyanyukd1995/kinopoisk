import 'move_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_move_model.g.dart';

@JsonSerializable()
class ListMoveModel {
  final List<MoveModel> items;
  final String errorMessage;
  const ListMoveModel({
    this.items,
    this.errorMessage,
  });
  static const fromJsonFactory = _$ListMoveModelFromJson;

  factory ListMoveModel.fromJson(Map<String, dynamic> json) =>
      _$ListMoveModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListMoveModelToJson(this);
}
