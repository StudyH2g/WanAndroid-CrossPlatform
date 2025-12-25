import 'package:getx_wan_android/data/response/home_banner_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_banner_list.g.dart';

@JsonSerializable()
class HomeBannerList {
  List<HomeBannerData> data;

  HomeBannerList(this.data);
  //
  // factory HomeBannerList.fromJson(List<dynamic> json) => HomeBannerList(
  //       json.map((e) => HomeBannerData.fromJson(e)).toList(),
  //     );

  factory HomeBannerList.fromJson(Map<String, dynamic> json) =>
      _$HomeBannerListFromJson(json);
}
