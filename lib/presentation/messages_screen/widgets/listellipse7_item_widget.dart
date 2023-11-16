import '../controller/messages_controller.dart';
import '../models/listellipse7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

// ignore: must_be_immutable
class Listellipse7ItemWidget extends StatelessWidget {
  Listellipse7ItemWidget(this.listellipse7ItemModelObj);

  Listellipse7ItemModel listellipse7ItemModelObj;

  var controller = Get.find<MessagesController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse80x801,
                height: getSize(
                  80,
                ),
                width: getSize(
                  80,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    40,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Obx(
                  () => Text(
                    listellipse7ItemModelObj.nameTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistSemiBold14Gray900.copyWith(
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
      ),
    );
  }
}
