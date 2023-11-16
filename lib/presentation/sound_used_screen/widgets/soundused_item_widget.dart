import '../controller/sound_used_controller.dart';
import '../models/soundused_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

// ignore: must_be_immutable
class SoundusedItemWidget extends StatelessWidget {
  SoundusedItemWidget(this.soundusedItemModelObj);

  SoundusedItemModel soundusedItemModelObj;

  var controller = Get.find<SoundUsedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        200,
      ),
      width: getHorizontalSize(
        121,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage200x1211,
            height: getVerticalSize(
              200,
            ),
            width: getHorizontalSize(
              121,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                12,
              ),
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            svgPath: ImageConstant.imgPlay,
            height: getSize(
              32,
            ),
            width: getSize(
              32,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                12,
              ),
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
