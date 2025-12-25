import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:get/get.dart';
import 'package:getx_wan_android/data/controller/home_controller.dart';

import '../data/response/home_article_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController controller;
  List<BannerModel> listBanners = [];

  @override
  void initState() {
    super.initState();
    controller = Get.put(HomeController());
    controller.getHomeBanners();
    controller.getHomeArticles(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: <Widget>[
          _swiperHomeBanner(),
          //_homeBanner(),
          _homeArticles(),
        ]),
      )),
    );
  }

  _homeBanner() {
    return Obx(() => BannerCarousel(
        banners: controller.banners.value
            .map(
                (e) => BannerModel(imagePath: e.imagePath, id: e.id.toString()))
            .toList()));
  }

  _swiperHomeBanner() {
    return Obx(() => SizedBox(
          height: 200,
          width: double.infinity,
          child: Swiper(
            itemCount: controller.banners.value.length,
            autoplay: true,
            itemBuilder: (context, index) {
              return Image.network(controller.banners.value[index].imagePath);
            },
          ),
        ));
  }

  _homeArticles() {
    return Obx(() => ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.articles.length,
          itemBuilder: (context, index) => _article(controller.articles[index]),
        ));
  }

  _article(HomeArticleData data) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: Column(
          children: [
            Text(data.title),
            Text(data.niceDate),
            Text(data.author),
          ],
        ),
      ),
      onTap: () {
        controller.collectArticle(data.id);
      },
    );
  }
}
