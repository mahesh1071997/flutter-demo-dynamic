import 'package:tiki_application1/core/app_export.dart';
import 'package:tiki_application1/presentation/qr_code_screen/models/qr_code_model.dart';

class QrCodeController extends GetxController {
  Rx<QrCodeModel> qrCodeModelObj = QrCodeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
