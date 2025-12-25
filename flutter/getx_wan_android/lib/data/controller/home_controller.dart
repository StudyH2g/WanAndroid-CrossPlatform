import 'package:get/get.dart';
import 'package:getx_wan_android/data/response/home_article_data.dart';
import 'package:getx_wan_android/data/response/home_banner_data.dart';
import 'package:getx_wan_android/http/service_aip.dart';

class HomeController extends GetxController {
  RxList<HomeBannerData> banners = <HomeBannerData>[].obs;
  RxList<HomeArticleData> articles = <HomeArticleData>[].obs;

  getHomeBanners() async {
    banners.value = await ServiceApi.instance.getHomeBanners();
    update();
  }

  getHomeArticles(int page) async {
    articles.value = await ServiceApi.instance.getHomeArticles(page);
    update();
  }

  collectArticle(int id) async {
    final res = await ServiceApi.instance.collectArticle(id);
    update();
  }
}
