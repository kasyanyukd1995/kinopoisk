import 'package:json_annotation/json_annotation.dart';

part 'actor_model.g.dart';

@JsonSerializable()
class ActorModel {
  final String id;
  final String image;
  final String name;
  final String asCharacter;

  const ActorModel({
    this.id,
    this.image,
    this.name,
    this.asCharacter,
  });

  static const fromJsonFactory = _$ActorModelFromJson;

  factory ActorModel.fromJson(Map<String, dynamic> json) =>
      _$ActorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ActorModelToJson(this);
}
