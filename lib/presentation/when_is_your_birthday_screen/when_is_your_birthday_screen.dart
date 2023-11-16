import '../when_is_your_birthday_screen/widgets/listnov_item_widget.dart';import 'controller/when_is_your_birthday_controller.dart';import 'models/listnov_item_model.dart';import 'package:flutter/material.dart';import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/widgets/app_bar/appbar_image.dart';import 'package:tiki_application1/widgets/app_bar/appbar_title.dart';import 'package:tiki_application1/widgets/app_bar/custom_app_bar.dart';import 'package:tiki_application1/widgets/custom_button.dart';class WhenIsYourBirthdayScreen extends GetWidget<WhenIsYourBirthdayController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 13), onTap: () {onTapArrowleft2();}), title: AppbarTitle(text: "msg_when_is_your_bi".tr, margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(all: 24), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_your_birthday_w".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium18.copyWith(letterSpacing: getHorizontalSize(0.2))), Spacer(), GestureDetector(onTap: () {onTapRowdate();}, child: Container(padding: getPadding(left: 20, top: 18, right: 20, bottom: 18), decoration: AppDecoration.outlineGray900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(left: 2, top: 1, bottom: 1), child: Obx(() => Text(controller.whenIsYourBirthdayModelObj.value.dateTxt.value, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))))), CustomImageView(svgPath: ImageConstant.imgCalendar, height: getSize(20), width: getSize(20))]))), Container(height: getVerticalSize(208), child: Obx(() => ListView.separated(padding: getPadding(left: 16, top: 32, right: 16), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(16));}, itemCount: controller.whenIsYourBirthdayModelObj.value.listnovItemList.value.length, itemBuilder: (context, index) {ListnovItemModel model = controller.whenIsYourBirthdayModelObj.value.listnovItemList.value[index]; return ListnovItemWidget(model);}))), Padding(padding: getPadding(top: 202, bottom: 24), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomButton(height: getVerticalSize(58), text: "lbl_skip".tr, margin: getMargin(right: 6), variant: ButtonVariant.FillDeeporange50, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16DeeporangeA40001_1, onTap: () {onTapSkip();})), Expanded(child: CustomButton(height: getVerticalSize(58), text: "lbl_continue".tr, margin: getMargin(left: 6), variant: ButtonVariant.OutlineDeeporangeA40035, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700, onTap: () {onTapContinue();}))]))])))); } 
Future<void> onTapRowdate() async  { DateTime? dateTime  = await showDatePicker(context: Get.context!,initialDate: controller.whenIsYourBirthdayModelObj.value.selectedDateTxt!.value , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {controller.whenIsYourBirthdayModelObj.value.selectedDateTxt!.value = dateTime;controller.whenIsYourBirthdayModelObj.value.dateTxt.value = dateTime.format(SHORT_DATE_WITH_FULL_YEAR);} } 
onTapSkip() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
onTapContinue() { Get.toNamed(AppRoutes.fillYourProfileBlankFormScreen, ); } 
onTapArrowleft2() { Get.back(); } 
 }
