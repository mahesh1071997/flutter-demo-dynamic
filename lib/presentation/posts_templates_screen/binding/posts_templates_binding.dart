import '../controller/posts_templates_controller.dart';
import 'package:get/get.dart';

class PostsTemplatesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsTemplatesController());
  }
}
