import '../controller/fill_your_profile_blank_form_controller.dart';
import 'package:get/get.dart';

class FillYourProfileBlankFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FillYourProfileBlankFormController());
  }
}
