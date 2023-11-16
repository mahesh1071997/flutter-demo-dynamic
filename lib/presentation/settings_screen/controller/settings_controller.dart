import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/settings_screen/models/settings_model.dart';class SettingsController extends GetxController {Rx<SettingsModel> settingsModelObj = SettingsModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
