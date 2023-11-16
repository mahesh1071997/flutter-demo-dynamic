import '../controller/posts_quick_photo_controller.dart';
import 'package:get/get.dart';

class PostsQuickPhotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsQuickPhotoController());
  }
}
