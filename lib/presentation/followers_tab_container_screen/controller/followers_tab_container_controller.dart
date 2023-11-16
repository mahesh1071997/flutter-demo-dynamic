import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/followers_tab_container_screen/models/followers_tab_container_model.dart';import 'package:flutter/material.dart';class FollowersTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<FollowersTabContainerModel> followersTabContainerModelObj = FollowersTabContainerModel().obs;

late TabController tabController = Get.put(TabController(vsync: this, length: 3));

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
