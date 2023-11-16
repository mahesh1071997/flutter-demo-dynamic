import '../controller/see_live_controller.dart';
import 'package:get/get.dart';

class SeeLiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeeLiveController());
  }
}
