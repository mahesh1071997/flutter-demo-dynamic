import '../controller/type_message_controller.dart';
import 'package:get/get.dart';

class TypeMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TypeMessageController());
  }
}
