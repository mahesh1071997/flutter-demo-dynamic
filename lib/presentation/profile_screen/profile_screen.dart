import '../profile_screen/widgets/profile_item_widget.dart';import 'controller/profile_controller.dart';import 'models/profile_item_model.dart';import 'package:flutter/material.dart';import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/widgets/app_bar/appbar_image.dart';import 'package:tiki_application1/widgets/app_bar/appbar_title.dart';import 'package:tiki_application1/widgets/app_bar/custom_app_bar.dart';import 'package:tiki_application1/widgets/custom_button.dart';import 'package:tiki_application1/widgets/custom_icon_button.dart';import 'package:tiki_application1/presentation/total_likes_dialog/total_likes_dialog.dart';import 'package:tiki_application1/presentation/total_likes_dialog/controller/total_likes_controller.dart';class ProfileScreen extends GetWidget<ProfileController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(41), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, bottom: 3), onTap: () {onTapArrowleft12();}), title: AppbarTitle(text: "lbl_jenny_wilson".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgLightbulb28x28, margin: getMargin(left: 24, right: 3)), AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgClock24x24, margin: getMargin(left: 20, right: 27))]), body: SizedBox(width: size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(left: 24, top: 22, right: 24, bottom: 5), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgEllipse120x1201, height: getSize(120), width: getSize(120), radius: BorderRadius.circular(getHorizontalSize(60))), Padding(padding: getPadding(top: 14), child: Text("lbl_jenny_wilson3".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold20)), Padding(padding: getPadding(top: 9), child: Text("msg_actress_singe".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), Padding(padding: getPadding(top: 17), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(padding: getPadding(left: 20, right: 20), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder1), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_679".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24), Padding(padding: getPadding(top: 5, bottom: 1), child: Text("lbl_posts".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray800.copyWith(letterSpacing: getHorizontalSize(0.2))))])), GestureDetector(onTap: () {onTapColumndistance();}, child: Container(padding: getPadding(left: 11, right: 11), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder1), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_2_6m".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24), Padding(padding: getPadding(top: 5, bottom: 1), child: Text("lbl_followers".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray800.copyWith(letterSpacing: getHorizontalSize(0.2))))]))), Container(padding: getPadding(left: 11, right: 11), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder1), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_648".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24), Padding(padding: getPadding(top: 6), child: Text("lbl_following".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray800.copyWith(letterSpacing: getHorizontalSize(0.2))))])), GestureDetector(onTap: () {onTapStacklikes();}, child: Container(height: getVerticalSize(53), width: getHorizontalSize(83), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.center, child: Container(padding: getPadding(left: 25, top: 1, right: 25, bottom: 1), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder1), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(top: 32), child: Text("lbl_likes".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray800.copyWith(letterSpacing: getHorizontalSize(0.2))))]))), Align(alignment: Alignment.topCenter, child: Text("lbl_27m".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24))])))])), Padding(padding: getPadding(top: 18), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomButton(height: getVerticalSize(38), width: getHorizontalSize(132), text: "lbl_follow".tr, margin: getMargin(top: 1, bottom: 1), shape: ButtonShape.CircleBorder19, padding: ButtonPadding.PaddingT11, fontStyle: ButtonFontStyle.UrbanistSemiBold16WhiteA700_1, prefixWidget: Container(margin: getMargin(right: 8), child: CustomImageView(svgPath: ImageConstant.imgSearchWhiteA700))), CustomButton(height: getVerticalSize(38), width: getHorizontalSize(132), text: "lbl_message2".tr, margin: getMargin(top: 1, bottom: 1), variant: ButtonVariant.OutlineDeeporangeA40001, shape: ButtonShape.CircleBorder19, padding: ButtonPadding.PaddingT11, fontStyle: ButtonFontStyle.UrbanistSemiBold16DeeporangeA40001_1, prefixWidget: Container(margin: getMargin(right: 8), child: CustomImageView(svgPath: ImageConstant.imgMap)), onTap: () {onTapMessage();}), CustomIconButton(height: 40, width: 40, shape: IconButtonShape.CircleBorder20, padding: IconButtonPadding.PaddingAll8, child: CustomImageView(svgPath: ImageConstant.imgInstagram)), CustomIconButton(height: 40, width: 40, shape: IconButtonShape.CircleBorder20, padding: IconButtonPadding.PaddingAll8, child: CustomImageView(svgPath: ImageConstant.imgFavorite40x40))])), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(top: 34, right: 39), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgGrid24x24, height: getSize(24), width: getSize(24)), Padding(padding: getPadding(top: 12), child: SizedBox(width: getHorizontalSize(127), child: Divider(height: getVerticalSize(4), thickness: getVerticalSize(4), color: ColorConstant.deepOrangeA40001)))]), Spacer(flex: 31), CustomImageView(svgPath: ImageConstant.imgBookmark24x24, height: getSize(24), width: getSize(24), margin: getMargin(bottom: 16)), Spacer(flex: 68), CustomImageView(svgPath: ImageConstant.imgIconlyboldheart, height: getSize(24), width: getSize(24), margin: getMargin(bottom: 16))]))), Padding(padding: getPadding(top: 23), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(201), crossAxisCount: 3, mainAxisSpacing: getHorizontalSize(8), crossAxisSpacing: getHorizontalSize(8)), physics: NeverScrollableScrollPhysics(), itemCount: controller.profileModelObj.value.profileItemList.value.length, itemBuilder: (context, index) {ProfileItemModel model = controller.profileModelObj.value.profileItemList.value[index]; return ProfileItemWidget(model);})))])))))); } 
onTapColumndistance() { Get.toNamed(AppRoutes.followersTabContainerScreen, ); } 
onTapStacklikes() { Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: EdgeInsets.only(left: 0), content:TotalLikesDialog(Get.put(TotalLikesController(),),),)); } 
onTapMessage() { Get.toNamed(AppRoutes.sendMessageScreen, ); } 
onTapArrowleft12() { Get.back(); } 
 }
