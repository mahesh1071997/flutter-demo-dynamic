import '../controller/all_activity_dropdown_controller.dart';
import 'package:get/get.dart';

class AllActivityDropdownBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllActivityDropdownController());
  }
}
