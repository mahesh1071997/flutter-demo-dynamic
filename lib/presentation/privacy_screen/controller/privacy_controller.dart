import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/privacy_screen/models/privacy_model.dart';class PrivacyController extends GetxController {Rx<PrivacyModel> privacyModelObj = PrivacyModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
