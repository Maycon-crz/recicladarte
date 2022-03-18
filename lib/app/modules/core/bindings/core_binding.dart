import 'package:get/get.dart';
import '../controllers/core_controller.dart';

class CoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CoreController());
  }
}
