import '../search_type_keyword_screen/widgets/listname1_item_widget.dart';
import '../search_type_keyword_screen/widgets/listname_item_widget.dart';
import 'controller/search_type_keyword_controller.dart';
import 'models/listname1_item_model.dart';
import 'models/listname_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';
import 'package:tiki_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchTypeKeywordScreen extends GetWidget<SearchTypeKeywordController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            all: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomSearchView(
                focusNode: FocusNode(),
                controller: controller.stateActiveSearchController,
                hintText: "lbl_ariana".tr,
                variant: SearchViewVariant.OutlineDeeporangeA40001,
                fontStyle: SearchViewFontStyle.UrbanistSemiBold14Gray900,
                prefix: Container(
                  margin: getMargin(
                    left: 20,
                    top: 18,
                    right: 12,
                    bottom: 18,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearchDeepOrangeA40001,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    56,
                  ),
                ),
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 18,
                    right: 20,
                    bottom: 18,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgOverflowmenu,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    56,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_recent".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold20,
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 3,
                      ),
                      child: Text(
                        "lbl_clear_all".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold16DeeporangeA40001
                            .copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          24,
                        ),
                      );
                    },
                    itemCount: controller.searchTypeKeywordModelObj.value
                        .listnameItemList.value.length,
                    itemBuilder: (context, index) {
                      ListnameItemModel model = controller
                          .searchTypeKeywordModelObj
                          .value
                          .listnameItemList
                          .value[index];
                      return ListnameItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 34,
                ),
                child: Text(
                  "msg_suggested_searc".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          25,
                        ),
                      );
                    },
                    itemCount: controller.searchTypeKeywordModelObj.value
                        .listname1ItemList.value.length,
                    itemBuilder: (context, index) {
                      Listname1ItemModel model = controller
                          .searchTypeKeywordModelObj
                          .value
                          .listname1ItemList
                          .value[index];
                      return Listname1ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
