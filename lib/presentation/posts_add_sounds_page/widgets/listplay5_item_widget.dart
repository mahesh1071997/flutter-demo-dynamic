import '../controller/posts_add_sounds_controller.dart';
import '../models/listplay5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

// ignore: must_be_immutable
class Listplay5ItemWidget extends StatelessWidget {
  Listplay5ItemWidget(this.listplay5ItemModelObj);

  Listplay5ItemModel listplay5ItemModelObj;

  var controller = Get.find<PostsAddSoundsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: getSize(
            80,
          ),
          width: getSize(
            80,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage80x803,
                height: getSize(
                  80,
                ),
                width: getSize(
                  80,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    16,
                  ),
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                svgPath: ImageConstant.imgPlay,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
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
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 2,
            bottom: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listplay5ItemModelObj.titleTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold18Gray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Obx(
                  () => Text(
                    listplay5ItemModelObj.artistTxt.value,
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
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Obx(
                  () => Text(
                    listplay5ItemModelObj.timeTxt.value,
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
        Padding(
          padding: getPadding(
            top: 31,
            bottom: 31,
          ),
          child: Obx(
            () => Text(
              listplay5ItemModelObj.distanceTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistSemiBold14Gray700.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgBookmark1,
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
          margin: getMargin(
            left: 21,
            top: 28,
            bottom: 28,
          ),
        ),
      ],
    );
  }
}
