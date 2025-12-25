// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyBase<T> _$MyBaseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    MyBase<T>(
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      errorCode: (json['errorCode'] as num?)?.toInt(),
      errorMsg: json['errorMsg'] as String?,
    );

Map<String, dynamic> _$MyBaseToJson<T>(
  MyBase<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
