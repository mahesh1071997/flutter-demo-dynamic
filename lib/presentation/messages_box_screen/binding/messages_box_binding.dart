import '../controller/messages_box_controller.dart';
import 'package:get/get.dart';

class MessagesBoxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessagesBoxController());
  }
}
