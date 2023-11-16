import '../controller/question_answer_controller.dart';
import '../models/listellipse4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

// ignore: must_be_immutable
class Listellipse4ItemWidget extends StatelessWidget {
  Listellipse4ItemWidget(this.listellipse4ItemModelObj);

  Listellipse4ItemModel listellipse4ItemModelObj;

  var controller = Get.find<QuestionAnswerController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse60x6018,
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
            left: 12,
            top: 10,
            bottom: 6,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listellipse4ItemModelObj.nameTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanMedium14Gray700.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Obx(
                  () => Text(
                    listellipse4ItemModelObj.favoritefruitTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistSemiBold16Gray900.copyWith(
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
            top: 8,
            bottom: 7,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIconlyboldheart36x36,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Obx(
                  () => Text(
                    listellipse4ItemModelObj.numberTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanMedium12Gray800.copyWith(
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
