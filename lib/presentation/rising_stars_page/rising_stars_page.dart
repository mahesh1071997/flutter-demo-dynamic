import '../rising_stars_page/widgets/listellipse2_item_widget.dart';
import 'controller/rising_stars_controller.dart';
import 'models/listellipse2_item_model.dart';
import 'models/rising_stars_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

class RisingStarsPage extends StatelessWidget {
  RisingStarsController controller =
      Get.put(RisingStarsController(RisingStarsModel().obs));

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
                  top: 17,
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
                    itemCount: controller.risingStarsModelObj.value
                        .listellipse2ItemList.value.length,
                    itemBuilder: (context, index) {
                      Listellipse2ItemModel model = controller
                          .risingStarsModelObj
                          .value
                          .listellipse2ItemList
                          .value[index];
                      return Listellipse2ItemWidget(
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
