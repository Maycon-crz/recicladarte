import 'package:get/get.dart';
import 'route_name.dart';
import '../views/core_page.dart';
import '../bindings/core_binding.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.corePage,
      page: () => CorePage(),
      binding: CoreBinding(),
    ),
  ];
}
