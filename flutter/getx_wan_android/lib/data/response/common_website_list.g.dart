// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_website_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonWebsiteList _$CommonWebsiteListFromJson(Map<String, dynamic> json) =>
    CommonWebsiteList(
      (json['data'] as List<dynamic>)
          .map((e) => CommonWebsite.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CommonWebsiteListToJson(CommonWebsiteList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
