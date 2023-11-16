import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/security_screen/models/security_model.dart';class SecurityController extends GetxController {Rx<SecurityModel> securityModelObj = SecurityModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

Rx<bool> isSelectedSwitch2 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
