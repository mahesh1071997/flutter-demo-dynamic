import '../controller/find_friends_controller.dart';
import 'package:get/get.dart';

class FindFriendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FindFriendsController());
  }
}
