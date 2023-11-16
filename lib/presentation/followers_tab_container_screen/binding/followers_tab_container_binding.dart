import '../controller/followers_tab_container_controller.dart';
import 'package:get/get.dart';

class FollowersTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowersTabContainerController());
  }
}
