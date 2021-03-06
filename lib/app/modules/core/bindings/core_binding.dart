import 'package:get/get.dart';
import 'package:recicladarteflutterv1/app/repositories/home_repository.dart';
import '../controllers/core_controller.dart';
import '../controllers/bottom_navigation_pages_controller.dart';
import 'package:dio/dio.dart';

class CoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeRepository(Get.find()));
    Get.lazyPut(() => CoreController(Get.find()));
    Get.lazyPut(() => BottomNavigationPagesController());
    Get.lazyPut(() => Dio(BaseOptions(
        baseUrl: 'https://5f7cba02834b5c0016b058aa.mockapi.io/api')));
  }
}
