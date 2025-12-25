import 'package:json_annotation/json_annotation.dart';

part 'my_base.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class MyBase<T> {
  T? data;
  int? errorCode;
  String? errorMsg;

  MyBase({this.data, this.errorCode, this.errorMsg});

  factory MyBase.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$MyBaseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$MyBaseToJson(this, toJsonT);
}
