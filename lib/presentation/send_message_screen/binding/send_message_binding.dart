import '../controller/send_message_controller.dart';
import 'package:get/get.dart';

class SendMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMessageController());
  }
}
