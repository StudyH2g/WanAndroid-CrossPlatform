// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_website.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonWebsite _$CommonWebsiteFromJson(Map<String, dynamic> json) =>
    CommonWebsite(
      json['category'] as String,
      json['icon'] as String,
      (json['id'] as num).toInt(),
      json['link'] as String,
      json['name'] as String,
      (json['order'] as num).toInt(),
      (json['visible'] as num).toInt(),
    );

Map<String, dynamic> _$CommonWebsiteToJson(CommonWebsite instance) =>
    <String, dynamic>{
      'category': instance.category,
      'icon': instance.icon,
      'id': instance.id,
      'link': instance.link,
      'name': instance.name,
      'order': instance.order,
      'visible': instance.visible,
    };
