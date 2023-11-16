import '../controller/posts_add_sounds_tab_container_controller.dart';
import 'package:get/get.dart';

class PostsAddSoundsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsAddSoundsTabContainerController());
  }
}
