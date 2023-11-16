import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/posts_upload_media_tab_container_screen/models/posts_upload_media_tab_container_model.dart';import 'package:flutter/material.dart';class PostsUploadMediaTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<PostsUploadMediaTabContainerModel> postsUploadMediaTabContainerModelObj = PostsUploadMediaTabContainerModel().obs;

late TabController autolayouthorizontalController = Get.put(TabController(vsync: this, length: 3));

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
