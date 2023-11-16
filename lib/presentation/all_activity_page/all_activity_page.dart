import '../all_activity_page/widgets/listaction_item_widget.dart';
import '../all_activity_page/widgets/listellipse5_item_widget.dart';
import 'controller/all_activity_controller.dart';
import 'models/all_activity_model.dart';
import 'models/listaction_item_model.dart';
import 'models/listellipse5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';
import 'package:tiki_application1/widgets/app_bar/appbar_dropdown.dart';
import 'package:tiki_application1/widgets/app_bar/appbar_image.dart';
import 'package:tiki_application1/widgets/app_bar/custom_app_bar.dart';

class AllActivityPage extends StatelessWidget {
  AllActivityController controller =
      Get.put(AllActivityController(AllActivityModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            49,
          ),
          leadingWidth: 56,
          leading: AppbarImage(
            height: getSize(
              32,
            ),
            width: getSize(
              32,
            ),
            imagePath: ImageConstant.imgFrame2,
            margin: getMargin(
              left: 24,
              top: 8,
              bottom: 9,
            ),
          ),
          centerTitle: true,
          title: Obx(
            () => AppbarDropdown(
              hintText: "lbl_all_activity".tr,
              items:
                  controller.allActivityModelObj.value.dropdownItemList.value,
              onTap: (value) {
                controller.onSelected(value);
              },
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                28,
              ),
              width: getSize(
                28,
              ),
              svgPath: ImageConstant.imgRewind,
              margin: getMargin(
                left: 24,
                top: 10,
                right: 24,
                bottom: 11,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 33,
            right: 24,
            bottom: 33,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_today".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanBold20,
              ),
              Padding(
                padding: getPadding(
                  top: 22,
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
                    itemCount: controller.allActivityModelObj.value
                        .listellipse5ItemList.value.length,
                    itemBuilder: (context, index) {
                      Listellipse5ItemModel model = controller
                          .allActivityModelObj
                          .value
                          .listellipse5ItemList
                          .value[index];
                      return Listellipse5ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 26,
                ),
                child: Text(
                  "lbl_yesterday".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 22,
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
                    itemCount: controller.allActivityModelObj.value
                        .listactionItemList.value.length,
                    itemBuilder: (context, index) {
                      ListactionItemModel model = controller.allActivityModelObj
                          .value.listactionItemList.value[index];
                      return ListactionItemWidget(
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
