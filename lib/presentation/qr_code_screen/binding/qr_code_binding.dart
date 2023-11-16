import '../controller/qr_code_controller.dart';
import 'package:get/get.dart';

class QrCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrCodeController());
  }
}
