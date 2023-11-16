import '../controller/tell_us_about_yourself_controller.dart';
import 'package:get/get.dart';

class TellUsAboutYourselfBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TellUsAboutYourselfController());
  }
}
