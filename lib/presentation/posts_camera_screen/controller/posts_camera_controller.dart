import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/posts_camera_screen/models/posts_camera_model.dart';class PostsCameraController extends GetxController {Rx<PostsCameraModel> postsCameraModelObj = PostsCameraModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
