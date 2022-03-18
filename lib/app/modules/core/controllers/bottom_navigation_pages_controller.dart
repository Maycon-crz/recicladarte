import 'package:flutter/material.dart'; //Ver se da de Apagar
import 'package:get/get.dart';
import '../../home/views/home_page.dart';
import '../../diy/views/diy_page.dart';
import '../../charges/views/charges_page.dart';
import '../../quiz/views/quiz_page.dart';

class BottomNavigationPages extends GetxController {
  final List<Widget> _tabList = [
    HomePage(),
    DiyPage(),
    ChargesPage(),
    QuizPage(),
  ];

  List<Widget> get tabList {
    return _tabList;
  }
}
