import 'package:flutter/material.dart'; //Ver se da de Apagar
import 'package:get/get.dart';
import '../../home/views/home_page.dart';
import '../widgets/modal_bottom_navigation_bar.dart';

class CoreController extends GetxController {
  RxInt pageIndex = 0.obs;
  RxString title = "".obs;

  final List<Widget> _tabList = [
    HomePage(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  List<Widget> get tabList {
    return _tabList;
  }

  onItemTapped(int index, context) {
    switch (index) {
      case 1:
        title.value = "DIY";
        break;
      case 2:
        title.value = "CHARGES";
        break;
      case 3:
        title.value = "QUIZ";
        break;
    }
    if (index == 4) {
      showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return ModalBottomNavigation();
        },
      );
      return;
    }
    pageIndex.value = index;
  }
}
