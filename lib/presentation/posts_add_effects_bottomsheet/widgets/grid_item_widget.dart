import '../controller/posts_add_effects_controller.dart';
import '../models/grid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

// ignore: must_be_immutable
class GridItemWidget extends StatelessWidget {
  GridItemWidget(this.gridItemModelObj);

  GridItemModel gridItemModelObj;

  var controller = Get.find<PostsAddEffectsController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage80x8011,
      height: getSize(
        80,
      ),
      width: getSize(
        80,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          24,
        ),
      ),
    );
  }
}
