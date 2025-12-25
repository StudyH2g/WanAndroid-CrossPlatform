// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_banner_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeBannerData _$HomeBannerDataFromJson(Map<String, dynamic> json) =>
    HomeBannerData(
      json['imagePath'] as String,
      json['title'] as String,
      json['url'] as String,
      (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$HomeBannerDataToJson(HomeBannerData instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'title': instance.title,
      'url': instance.url,
      'id': instance.id,
    };
