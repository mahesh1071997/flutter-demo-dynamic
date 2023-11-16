import '../controller/forgot_password_methods_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordMethodsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordMethodsController());
  }
}
