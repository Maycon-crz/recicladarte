import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recicladarte',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      getPages: AppPage.pages,
    );
  }
}
