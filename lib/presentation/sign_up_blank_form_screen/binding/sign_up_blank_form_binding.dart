import '../controller/sign_up_blank_form_controller.dart';
import 'package:get/get.dart';

class SignUpBlankFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpBlankFormController());
  }
}
