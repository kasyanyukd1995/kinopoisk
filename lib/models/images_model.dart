import 'package:json_annotation/json_annotation.dart';
import 'image_model.dart';
part 'images_model.g.dart';

@JsonSerializable()
class ImagesModel {
  final String imDbId;
  final String title;
  final String fullTitle;
  final String type;
  final String year;
  final List<ImageModel> items;

  const ImagesModel({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.items,
  });

  static const fromJsonFactory = _$ImagesModelFromJson;

  factory ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesModelToJson(this);
}
