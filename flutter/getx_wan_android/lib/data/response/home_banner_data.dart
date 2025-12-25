import 'package:json_annotation/json_annotation.dart';

part 'home_banner_data.g.dart';

@JsonSerializable()
class HomeBannerData {
  String imagePath;
  String title;
  String url;
  int id;

  HomeBannerData(this.imagePath, this.title, this.url, this.id);

  factory HomeBannerData.fromJson(Map<String, dynamic> json) =>
      _$HomeBannerDataFromJson(json);

  Map<String, dynamic> toJson() => _$HomeBannerDataToJson(this);
}
