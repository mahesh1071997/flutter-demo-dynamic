import '../profile_two_page/widgets/profiletwo_item_widget.dart';import 'controller/profile_two_controller.dart';import 'models/profile_two_model.dart';import 'models/profiletwo_item_model.dart';import 'package:flutter/material.dart';import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/widgets/app_bar/appbar_image.dart';import 'package:tiki_application1/widgets/app_bar/appbar_title.dart';import 'package:tiki_application1/widgets/app_bar/custom_app_bar.dart';import 'package:tiki_application1/widgets/custom_button.dart';
// ignore_for_file: must_be_immutable
class ProfileTwoPage extends StatelessWidget {ProfileTwoController controller = Get.put(ProfileTwoController(ProfileTwoModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(38), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgClock1, margin: getMargin(left: 24)), centerTitle: true, title: AppbarTitle(text: "lbl_profile".tr), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgSettings28x28, margin: getMargin(left: 24, right: 24), onTap: () {onTapSettings();})]), body: SizedBox(width: size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(left: 24, top: 34, right: 24, bottom: 5), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getSize(120), width: getSize(120), child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse120x1203, height: getSize(120), width: getSize(120), radius: BorderRadius.circular(getHorizontalSize(60)), alignment: Alignment.center), CustomImageView(svgPath: ImageConstant.imgEdit, height: getSize(30), width: getSize(30), alignment: Alignment.bottomRight, onTap: () {onTapImgEdit();})])), Padding(padding: getPadding(top: 14), child: Text("lbl_andrew_aisnley2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold20)), Padding(padding: getPadding(top: 9), child: Text("msg_designer_vide".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Padding(padding: getPadding(left: 20, top: 19, right: 14), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(bottom: 1), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_247".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24), Padding(padding: getPadding(top: 5), child: Text("lbl_posts".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray800.copyWith(letterSpacing: getHorizontalSize(0.2))))])), Padding(padding: getPadding(left: 48, bottom: 1), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_368k".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24), Padding(padding: getPadding(top: 5), child: Text("lbl_followers".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray800.copyWith(letterSpacing: getHorizontalSize(0.2))))])), Padding(padding: getPadding(left: 39), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_374".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24), Padding(padding: getPadding(top: 6), child: Text("lbl_following".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray800.copyWith(letterSpacing: getHorizontalSize(0.2))))])), Padding(padding: getPadding(left: 41, bottom: 1), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_3_7m".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24), Padding(padding: getPadding(top: 5), child: Text("lbl_likes".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray800.copyWith(letterSpacing: getHorizontalSize(0.2))))]))])), CustomButton(height: getVerticalSize(45), text: "lbl_edit_profile".tr, margin: getMargin(top: 24), variant: ButtonVariant.OutlineDeeporangeA40001, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingT11, fontStyle: ButtonFontStyle.UrbanistRomanBold18DeeporangeA40001_1, prefixWidget: Container(margin: getMargin(right: 9), child: CustomImageView(svgPath: ImageConstant.imgMap))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(top: 24, right: 35), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgGrid24x24, height: getSize(24), width: getSize(24)), Padding(padding: getPadding(top: 12), child: SizedBox(width: getHorizontalSize(95), child: Divider(height: getVerticalSize(4), thickness: getVerticalSize(4), color: ColorConstant.deepOrangeA40001)))]), CustomImageView(svgPath: ImageConstant.imgLock, height: getSize(24), width: getSize(24), margin: getMargin(left: 36, bottom: 16)), Spacer(flex: 50), CustomImageView(svgPath: ImageConstant.imgBookmark24x24, height: getSize(24), width: getSize(24), margin: getMargin(bottom: 16)), Spacer(flex: 50), CustomImageView(svgPath: ImageConstant.imgIconlyboldheart, height: getSize(24), width: getSize(24), margin: getMargin(bottom: 16))]))), Padding(padding: getPadding(top: 23), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(201), crossAxisCount: 3, mainAxisSpacing: getHorizontalSize(8), crossAxisSpacing: getHorizontalSize(8)), physics: NeverScrollableScrollPhysics(), itemCount: controller.profileTwoModelObj.value.profiletwoItemList.value.length, itemBuilder: (context, index) {ProfiletwoItemModel model = controller.profileTwoModelObj.value.profiletwoItemList.value[index]; return ProfiletwoItemWidget(model);})))])))))); } 
onTapImgEdit() { Get.toNamed(AppRoutes.editProfileScreen, ); } 
onTapSettings() { Get.toNamed(AppRoutes.settingsScreen, ); } 
 }
