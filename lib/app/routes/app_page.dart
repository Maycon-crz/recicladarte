import 'package:get/get.dart';
import 'route_name.dart';
import '../modules/core/views/core_page.dart';
import '../modules/core/bindings/core_binding.dart';
import '../modules/home/views/home_page.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.corePage,
      page: () => CorePage(),
      binding: CoreBinding(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
    ),
  ];
}
