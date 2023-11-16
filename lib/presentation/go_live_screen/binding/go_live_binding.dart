import '../controller/go_live_controller.dart';
import 'package:get/get.dart';

class GoLiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GoLiveController());
  }
}
