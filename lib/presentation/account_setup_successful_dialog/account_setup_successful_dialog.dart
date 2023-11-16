import 'controller/account_setup_successful_controller.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

class AccountSetupSuccessfulDialog extends StatelessWidget {
  AccountSetupSuccessfulDialog(this.controller);

  AccountSetupSuccessfulController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        340,
      ),
      padding: getPadding(
        left: 38,
        top: 32,
        right: 38,
        bottom: 32,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Text(
              "msg_congratulations".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold24Gray800,
            ),
          ),
          Container(
            width: getHorizontalSize(
              262,
            ),
            margin: getMargin(
              top: 14,
            ),
            child: Text(
              "msg_your_account_is".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRegular16.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector60x60,
            height: getSize(
              60,
            ),
            width: getSize(
              60,
            ),
            margin: getMargin(
              top: 32,
            ),
          ),
        ],
      ),
    );
  }
}
