import '../controller/lets_in_controller.dart';
import 'package:get/get.dart';

class LetsInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LetsInController());
  }
}
