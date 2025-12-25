import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:getx_wan_android/constants/url_constant.dart';
import 'package:getx_wan_android/data/response/common_website.dart';
import 'package:getx_wan_android/data/response/home_article_data.dart';
import 'package:getx_wan_android/data/response/home_article_list.dart';
import 'package:getx_wan_android/data/response/home_banner_data.dart';
import 'package:getx_wan_android/http/dio_clients.dart';

import '../data/base_model.dart';
import '../data/response/common_website_list.dart';

class ServiceApi {
  ServiceApi._();

  static final ServiceApi instance = ServiceApi._();

  Future<List<HomeBannerData>> getHomeBanners() async {
    return await DioClients.instance.get<List<HomeBannerData>>(
      UrlConstant.homeBanners,
      decoder: (data) {
        final listData = data as List<dynamic>;
        return listData
            .map((e) => HomeBannerData.fromJson(e as Map<String, dynamic>))
            .toList();
      },
    );
  }

  Future<List<HomeArticleData>> getHomeArticles(int page) async {
    var articleList = await DioClients.instance.get('article/list/$page/json',
        decoder: (data) => HomeArticleList.fromJson(data));
    debugPrint("HomeArticleData.data:${articleList.datas}");
    return articleList.datas;
  }

  Future<List<CommonWebsite>> getCommonWebsites() async {
    Response response =
        await DioClients.instance.get(UrlConstant.commonWebsites);
    debugPrint("CommonWebsite.data:${response.data}");
    var websiteList = CommonWebsiteList.fromJson(response.data);
    return websiteList.data;
  }

  Future<dynamic> _get(String path) async {
    Response response = await DioClients.instance.get(path);
    final baseModel = BaseModel.fromJson(response.data);
    if (baseModel.isSuccess()) {
      if (baseModel.data != null) {
        return baseModel.data;
      } else {
        return true;
      }
    } else {}
  }

  Future<void> collectArticle(int id) async {
    final res = await DioClients.instance.get('lg/collect/list/$id/json');
    debugPrint("collectArticle.data:${res}");
  }
}
