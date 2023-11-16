import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/splash_screen/models/splash_model.dart';class SplashController extends GetxController {Rx<SplashModel> splashModelObj = SplashModel().obs;

@override void onReady() { super.onReady();Future.delayed(const Duration(milliseconds: 3000), (){
Get.offNamed(AppRoutes.signInBlankFormScreen,);}); } 
@override void onClose() { super.onClose(); } 
 }
