import 'controller/followers_tab_container_controller.dart';import 'package:flutter/material.dart';import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/followers_page/followers_page.dart';import 'package:tiki_application1/presentation/suggested_page/suggested_page.dart';import 'package:tiki_application1/widgets/app_bar/appbar_image.dart';import 'package:tiki_application1/widgets/app_bar/appbar_title.dart';import 'package:tiki_application1/widgets/app_bar/custom_app_bar.dart';class FollowersTabContainerScreen extends GetWidget<FollowersTabContainerController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 13), onTap: () {onTapArrowleft13();}), title: AppbarTitle(text: "lbl_jenny_wilson4".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgSearchGray900, margin: getMargin(left: 24, top: 10, right: 24, bottom: 13))]), body: Container(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(39), width: getHorizontalSize(362), margin: getMargin(left: 24, top: 30), child: TabBar(controller: controller.tabController, labelColor: ColorConstant.deepOrangeA40001, labelStyle: TextStyle(fontSize: getFontSize(18), fontFamily: 'Urbanist', fontWeight: FontWeight.w600), unselectedLabelColor: ColorConstant.gray500, unselectedLabelStyle: TextStyle(fontSize: getFontSize(18), fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicatorColor: ColorConstant.deepOrangeA40001, tabs: [Tab(child: Text("lbl_followers".tr, overflow: TextOverflow.ellipsis)), Tab(child: Text("lbl_following".tr, overflow: TextOverflow.ellipsis)), Tab(child: Text("lbl_suggested".tr, overflow: TextOverflow.ellipsis))])), Container(height: getVerticalSize(761), child: TabBarView(controller: controller.tabController, children: [FollowersPage(), FollowersPage(), SuggestedPage()]))])))); } 
onTapArrowleft13() { Get.back(); } 
 }
