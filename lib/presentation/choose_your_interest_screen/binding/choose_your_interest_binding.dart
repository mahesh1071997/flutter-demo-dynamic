import '../controller/choose_your_interest_controller.dart';
import 'package:get/get.dart';

class ChooseYourInterestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseYourInterestController());
  }
}
