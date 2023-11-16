import '../controller/posts_edit_page_controller.dart';
import 'package:get/get.dart';

class PostsEditPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsEditPageController());
  }
}
