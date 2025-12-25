// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_article_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeArticleList _$HomeArticleListFromJson(Map<String, dynamic> json) =>
    HomeArticleList(
      (json['size'] as num?)?.toInt(),
      (json['datas'] as List<dynamic>)
          .map((e) => HomeArticleData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeArticleListToJson(HomeArticleList instance) =>
    <String, dynamic>{
      'size': instance.size,
      'datas': instance.datas,
    };
