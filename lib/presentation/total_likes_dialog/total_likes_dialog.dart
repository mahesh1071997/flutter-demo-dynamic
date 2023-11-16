import 'controller/total_likes_controller.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';
import 'package:tiki_application1/widgets/custom_button.dart';

class TotalLikesDialog extends StatelessWidget {
  TotalLikesDialog(this.controller);

  TotalLikesController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        340,
      ),
      padding: getPadding(
        left: 32,
        top: 31,
        right: 32,
        bottom: 31,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "lbl_27m_total_likes".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold24DeeporangeA40001,
          ),
          Container(
            width: getHorizontalSize(
              267,
            ),
            margin: getMargin(
              left: 3,
              top: 17,
              right: 4,
            ),
            child: Text(
              "msg_jenny_wilson_received".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRegular16.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              58,
            ),
            text: "lbl_ok".tr,
            margin: getMargin(
              top: 32,
            ),
            shape: ButtonShape.RoundedBorder16,
            padding: ButtonPadding.PaddingAll18,
            fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700_1,
          ),
        ],
      ),
    );
  }
}
