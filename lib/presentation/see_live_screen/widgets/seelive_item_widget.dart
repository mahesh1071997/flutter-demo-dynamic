import '../controller/see_live_controller.dart';
import '../models/seelive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

// ignore: must_be_immutable
class SeeliveItemWidget extends StatelessWidget {
  SeeliveItemWidget(this.seeliveItemModelObj);

  SeeliveItemModel seeliveItemModelObj;

  var controller = Get.find<SeeLiveController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse40x401,
          height: getSize(
            40,
          ),
          width: getSize(
            40,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              20,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 12,
            top: 4,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  seeliveItemModelObj.nameTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold14.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Obx(
                  () => Text(
                    seeliveItemModelObj.phraseTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanMedium12Gray300.copyWith(
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
      ],
    );
  }
}
