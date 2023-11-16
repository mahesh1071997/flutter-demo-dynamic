import 'package:tiki_application1/core/app_export.dart';
import 'package:tiki_application1/presentation/weekly_ranking_tab_container_screen/models/weekly_ranking_tab_container_model.dart';
import 'package:flutter/material.dart';

class WeeklyRankingTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<WeeklyRankingTabContainerModel> weeklyRankingTabContainerModelObj =
      WeeklyRankingTabContainerModel().obs;

  late TabController autoLayoutHorizontalController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
