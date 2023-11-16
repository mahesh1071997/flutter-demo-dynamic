import '../controller/followers_controller.dart';
import '../models/followers_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';
import 'package:tiki_application1/widgets/custom_button.dart';

// ignore: must_be_immutable
class FollowersItemWidget extends StatelessWidget {
  FollowersItemWidget(this.followersItemModelObj);

  FollowersItemModel followersItemModelObj;

  var controller = Get.find<FollowersController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse60x603,
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
            bottom: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  followersItemModelObj.nameTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold18Gray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Obx(
                  () => Text(
                    followersItemModelObj.priceTxt.value,
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
