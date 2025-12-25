import 'package:flutter/material.dart';
import 'package:getx_wan_android/pages/common_page.dart';
import 'package:getx_wan_android/pages/home_page.dart';
import 'package:getx_wan_android/pages/knowledge_page.dart';

import 'my_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  late PageController controller;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: _index);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: PageView(
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
              HomePage(),
              CommonPage(),
              KnowledgePage(),
              MyPage(),
            ])),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (tappedItemIndex) => setState(() {
                  _index = tappedItemIndex;
                  controller.jumpToPage(_index);
                }),
            currentIndex: _index,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            // selectedLabelStyle: const TextStyle(
            //     fontWeight: FontWeight.bold, color: Colors.blue),
            // unselectedLabelStyle: const TextStyle(
            //     fontWeight: FontWeight.normal, color: Colors.black),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit), label: "common"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book), label: "knowledge"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "my"),
            ]));
  }
}
