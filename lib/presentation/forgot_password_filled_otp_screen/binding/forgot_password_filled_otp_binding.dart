import '../controller/forgot_password_filled_otp_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordFilledOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordFilledOtpController());
  }
}
