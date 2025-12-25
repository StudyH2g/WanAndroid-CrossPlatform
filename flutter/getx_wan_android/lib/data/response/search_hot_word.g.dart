// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_hot_word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchHotWord _$SearchHotWordFromJson(Map<String, dynamic> json) =>
    SearchHotWord(
      (json['id'] as num).toInt(),
      json['link'] as String,
      json['name'] as String,
      (json['order'] as num).toInt(),
      (json['visible'] as num).toInt(),
    );

Map<String, dynamic> _$SearchHotWordToJson(SearchHotWord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'name': instance.name,
      'order': instance.order,
      'visible': instance.visible,
    };
