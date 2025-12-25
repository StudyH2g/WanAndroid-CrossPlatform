import 'package:getx_wan_android/data/response/home_article_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_article_list.g.dart';

@JsonSerializable()
class HomeArticleList {
  int? size;
  List<HomeArticleData> datas;

  HomeArticleList(this.size, this.datas);

  factory HomeArticleList.fromJson(Map<String, dynamic> json) =>
      _$HomeArticleListFromJson(json);

  Map<String, dynamic> toJson() => _$HomeArticleListToJson(this);
}
