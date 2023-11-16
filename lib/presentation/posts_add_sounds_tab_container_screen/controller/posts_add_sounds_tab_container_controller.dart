import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/posts_add_sounds_tab_container_screen/models/posts_add_sounds_tab_container_model.dart';import 'package:flutter/material.dart';class PostsAddSoundsTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {TextEditingController stateDefaultSearchController = TextEditingController();

Rx<PostsAddSoundsTabContainerModel> postsAddSoundsTabContainerModelObj = PostsAddSoundsTabContainerModel().obs;

late TabController autolayouthorizontalController = Get.put(TabController(vsync: this, length: 2));

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); stateDefaultSearchController.dispose(); } 
 }
