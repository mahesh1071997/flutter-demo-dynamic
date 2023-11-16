import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/posts_edit_page_screen/models/posts_edit_page_model.dart';class PostsEditPageController extends GetxController {Rx<PostsEditPageModel> postsEditPageModelObj = PostsEditPageModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
