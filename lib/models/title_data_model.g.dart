// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleDataModel _$TitleDataModelFromJson(Map<String, dynamic> json) {
  return TitleDataModel(
    id: json['id'] as String,
    title: json['title'] as String,
    year: json['year'] as String,
    image: json['image'] as String,
    runtimeStr: json['runtimeStr'] as String,
    plot: json['plot'] as String,
    stars: json['stars'] as String,
    actorList: (json['actorList'] as List)
        ?.map((e) =>
            e == null ? null : ActorModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    countries: json['countries'] as String,
  );
}

Map<String, dynamic> _$TitleDataModelToJson(TitleDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'image': instance.image,
      'runtimeStr': instance.runtimeStr,
      'plot': instance.plot,
      'stars': instance.stars,
      'actorList': instance.actorList,
      'countries': instance.countries,
    };
