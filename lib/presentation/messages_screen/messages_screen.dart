import '../messages_screen/widgets/listellipse7_item_widget.dart';import '../messages_screen/widgets/listmessage_item_widget.dart';import 'controller/messages_controller.dart';import 'models/listellipse7_item_model.dart';import 'models/listmessage_item_model.dart';import 'package:flutter/material.dart';import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/widgets/app_bar/appbar_image.dart';import 'package:tiki_application1/widgets/app_bar/appbar_title.dart';import 'package:tiki_application1/widgets/app_bar/custom_app_bar.dart';import 'package:tiki_application1/widgets/custom_search_view.dart';class MessagesScreen extends GetWidget<MessagesController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(52), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 14), onTap: () {onTapArrowleft17();}), title: AppbarTitle(text: "lbl_messages".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgPlus28x28, margin: getMargin(left: 24, top: 10, right: 14)), AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgClock24x24, margin: getMargin(left: 20, top: 10, right: 38))]), body: Container(width: double.maxFinite, padding: getPadding(top: 19, bottom: 19), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.center, child: CustomSearchView(focusNode: FocusNode(), controller: controller.stateDefaultSearchController, hintText: "lbl_search".tr, margin: getMargin(left: 24, right: 24), alignment: Alignment.center, prefix: Container(margin: getMargin(left: 20, top: 18, right: 12, bottom: 18), child: CustomImageView(svgPath: ImageConstant.imgSearchGray400)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(56)), suffix: Container(margin: getMargin(left: 30, top: 18, right: 20, bottom: 18), child: CustomImageView(svgPath: ImageConstant.imgOverflowmenu)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56)))), Padding(padding: getPadding(left: 24, top: 26), child: Text("lbl_recently".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold20)), Align(alignment: Alignment.centerRight, child: Container(height: getVerticalSize(126), child: Obx(() => ListView.separated(padding: getPadding(left: 24, top: 22), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(16));}, itemCount: controller.messagesModelObj.value.listellipse7ItemList.value.length, itemBuilder: (context, index) {Listellipse7ItemModel model = controller.messagesModelObj.value.listellipse7ItemList.value[index]; return Listellipse7ItemWidget(model);})))), Padding(padding: getPadding(left: 24, top: 26), child: Text("lbl_messages".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold20)), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 21, right: 24), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(24));}, itemCount: controller.messagesModelObj.value.listmessageItemList.value.length, itemBuilder: (context, index) {ListmessageItemModel model = controller.messagesModelObj.value.listmessageItemList.value[index]; return ListmessageItemWidget(model, onTapRowellipse: () {onTapRowellipse();});}))))])))); } 
onTapRowellipse() { Get.toNamed(AppRoutes.messagesBoxScreen); } 
onTapArrowleft17() { Get.back(); } 
 }
