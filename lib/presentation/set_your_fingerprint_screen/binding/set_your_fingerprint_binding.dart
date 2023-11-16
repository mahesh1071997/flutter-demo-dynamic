import '../controller/set_your_fingerprint_controller.dart';
import 'package:get/get.dart';

class SetYourFingerprintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetYourFingerprintController());
  }
}
