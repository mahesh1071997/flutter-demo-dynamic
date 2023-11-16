import '../controller/go_live_together_controller.dart';
import '../models/listellipse3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';
import 'package:tiki_application1/widgets/custom_button.dart';

// ignore: must_be_immutable
class Listellipse3ItemWidget extends StatelessWidget {
  Listellipse3ItemWidget(this.listellipse3ItemModelObj);

  Listellipse3ItemModel listellipse3ItemModelObj;

  var controller = Get.find<GoLiveTogetherController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse60x609,
          height: getSize(
            60,
          ),
          width: getSize(
            60,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              30,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 20,
            top: 6,
            bottom: 6,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listellipse3ItemModelObj.nameTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold18Gray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Obx(
                  () => Text(
                    listellipse3ItemModelObj.timeTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanMedium14Gray700.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomButton(
          height: getVerticalSize(
            32,
          ),
          width: getHorizontalSize(
            73,
          ),
          text: "lbl_follow".tr,
          margin: getMargin(
            top: 14,
            bottom: 14,
          ),
        ),
      ],
    );
  }
}
