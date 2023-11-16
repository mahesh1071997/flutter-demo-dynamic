import '../switch_account_bottomsheet/widgets/switchaccount_item_widget.dart';
import 'controller/switch_account_controller.dart';
import 'models/switchaccount_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';
import 'package:tiki_application1/widgets/custom_icon_button.dart';

class SwitchAccountBottomsheet extends StatelessWidget {
  SwitchAccountBottomsheet(this.controller);

  SwitchAccountController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 8,
            right: 24,
            bottom: 8,
          ),
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
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: Text(
                  "lbl_switch_account".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold24,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray200,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
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
                    itemCount: controller.switchAccountModelObj.value
                        .switchaccountItemList.value.length,
                    itemBuilder: (context, index) {
                      SwitchaccountItemModel model = controller
                          .switchAccountModelObj
                          .value
                          .switchaccountItemList
                          .value[index];
                      return SwitchaccountItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 24,
                    bottom: 28,
                  ),
                  child: Row(
                    children: [
                      CustomIconButton(
                        height: 60,
                        width: 60,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgPlusDeepOrangeA40001,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 18,
                          bottom: 19,
                        ),
                        child: Text(
                          "lbl_add_account".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold18Gray900,
                        ),
                      ),
                    ],
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
