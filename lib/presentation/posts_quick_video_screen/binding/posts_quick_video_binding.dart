import '../controller/posts_quick_video_controller.dart';
import 'package:get/get.dart';

class PostsQuickVideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsQuickVideoController());
  }
}
