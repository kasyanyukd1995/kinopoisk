import 'package:json_annotation/json_annotation.dart';
import 'image_model.dart';

part 'list_images_model.g.dart';

@JsonSerializable()
class ListImagesModel {
  final List<ImageModel> items;

  const ListImagesModel({
    this.items,
  });

  static const fromJsonFactory = _$ListImagesModelFromJson;

  factory ListImagesModel.fromJson(Map<String, dynamic> json) =>
      _$ListImagesModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListImagesModelToJson(this);
}
