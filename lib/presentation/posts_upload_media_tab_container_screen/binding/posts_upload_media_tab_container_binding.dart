import '../controller/posts_upload_media_tab_container_controller.dart';
import 'package:get/get.dart';

class PostsUploadMediaTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsUploadMediaTabContainerController());
  }
}
