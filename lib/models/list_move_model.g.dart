// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_move_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListMoveModel _$ListMoveModelFromJson(Map<String, dynamic> json) {
  return ListMoveModel(
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : MoveModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    errorMessage: json['errorMessage'] as String,
  );
}

Map<String, dynamic> _$ListMoveModelToJson(ListMoveModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'errorMessage': instance.errorMessage,
    };
