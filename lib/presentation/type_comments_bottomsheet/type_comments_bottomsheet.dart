import '../type_comments_bottomsheet/widgets/comments1_item_widget.dart';
import 'controller/type_comments_controller.dart';
import 'models/comments1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';
import 'package:tiki_application1/widgets/custom_text_form_field.dart';

class TypeCommentsBottomsheet extends StatelessWidget {
  TypeCommentsBottomsheet(this.controller);

  TypeCommentsController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineGray100.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL40,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgFrame,
                height: getVerticalSize(
                  3,
                ),
                width: getHorizontalSize(
                  38,
                ),
                margin: getMargin(
                  top: 8,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Text(
                  "lbl_24_8k_comments".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold24,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray200,
                  indent: getHorizontalSize(
                    24,
                  ),
                  endIndent: getHorizontalSize(
                    24,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 23,
                  right: 24,
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
                    itemCount: controller.typeCommentsModelObj.value
                        .comments1ItemList.value.length,
                    itemBuilder: (context, index) {
                      Comments1ItemModel model = controller.typeCommentsModelObj
                          .value.comments1ItemList.value[index];
                      return Comments1ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: getMargin(
                  top: 24,
                ),
                padding: getPadding(
                  all: 24,
                ),
                decoration: AppDecoration.outlineGray1001.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextFormField(
                      width: getHorizontalSize(
                        312,
                      ),
                      focusNode: FocusNode(),
                      controller: controller.statusActiveTypeNormalController,
                      hintText: "msg_you_re_so_adora2".tr,
                      variant: TextFormFieldVariant.OutlineDeeporangeA40001,
                      padding: TextFormFieldPadding.PaddingT19_2,
                      fontStyle: TextFormFieldFontStyle
                          .UrbanistSemiBold14DeeporangeA40001,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                        margin: getMargin(
                          left: 30,
                          top: 18,
                          right: 18,
                          bottom: 18,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant
                              .imgCategoriesgiftComponentadditionalIcons,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          56,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgAutolayouthorizontalWhiteA700,
                      height: getSize(
                        56,
                      ),
                      width: getSize(
                        56,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          28,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
