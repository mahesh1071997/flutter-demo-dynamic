import '../controller/when_is_your_birthday_controller.dart';
import 'package:get/get.dart';

class WhenIsYourBirthdayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhenIsYourBirthdayController());
  }
}
