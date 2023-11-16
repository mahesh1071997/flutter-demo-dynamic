import '../suggested_page/widgets/suggested_item_widget.dart';
import 'controller/suggested_controller.dart';
import 'models/suggested_item_model.dart';
import 'models/suggested_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

class SuggestedPage extends StatelessWidget {
  SuggestedController controller =
      Get.put(SuggestedController(SuggestedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          24,
                        ),
                      );
                    },
                    itemCount: controller
                        .suggestedModelObj.value.suggestedItemList.value.length,
                    itemBuilder: (context, index) {
                      SuggestedItemModel model = controller.suggestedModelObj
                          .value.suggestedItemList.value[index];
                      return SuggestedItemWidget(
                        model,
                      );
                    },
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
