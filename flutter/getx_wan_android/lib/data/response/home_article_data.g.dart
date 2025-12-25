// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_article_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeArticleData _$HomeArticleDataFromJson(Map<String, dynamic> json) =>
    HomeArticleData(
      json['author'] as String,
      json['chapterName'] as String,
      json['shareUser'] as String,
      json['link'] as String,
      json['niceDate'] as String,
      json['title'] as String,
      (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$HomeArticleDataToJson(HomeArticleData instance) =>
    <String, dynamic>{
      'author': instance.author,
      'chapterName': instance.chapterName,
      'shareUser': instance.shareUser,
      'link': instance.link,
      'niceDate': instance.niceDate,
      'title': instance.title,
      'id': instance.id,
    };
