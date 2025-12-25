// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_banner_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeBannerList _$HomeBannerListFromJson(Map<String, dynamic> json) =>
    HomeBannerList(
      (json['data'] as List<dynamic>)
          .map((e) => HomeBannerData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeBannerListToJson(HomeBannerList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
