import '../controller/posts_camera_controller.dart';
import 'package:get/get.dart';

class PostsCameraBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostsCameraController());
  }
}
