import '../controller/search_type_keyword_controller.dart';
import '../models/listname_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListnameItemWidget extends StatelessWidget {
  ListnameItemWidget(this.listnameItemModelObj);

  ListnameItemModel listnameItemModelObj;

  var controller = Get.find<SearchTypeKeywordController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: getPadding(
            top: 2,
            bottom: 3,
          ),
          child: Obx(
            () => Text(
              listnameItemModelObj.nameTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanMedium18Gray600.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgClose,
          height: getSize(
            28,
          ),
          width: getSize(
            28,
          ),
        ),
      ],
    );
  }
}
