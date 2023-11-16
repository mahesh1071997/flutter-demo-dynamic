import '../weekly_ranking_page/widgets/weeklyranking_item_widget.dart';
import 'controller/weekly_ranking_controller.dart';
import 'models/weekly_ranking_model.dart';
import 'models/weeklyranking_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

class WeeklyRankingPage extends StatelessWidget {
  WeeklyRankingController controller =
      Get.put(WeeklyRankingController(WeeklyRankingModel().obs));

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
                    itemCount: controller.weeklyRankingModelObj.value
                        .weeklyrankingItemList.value.length,
                    itemBuilder: (context, index) {
                      WeeklyrankingItemModel model = controller
                          .weeklyRankingModelObj
                          .value
                          .weeklyrankingItemList
                          .value[index];
                      return WeeklyrankingItemWidget(
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
