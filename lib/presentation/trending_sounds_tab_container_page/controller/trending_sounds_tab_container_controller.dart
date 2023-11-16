import 'package:tiki_application1/core/app_export.dart';
import 'package:tiki_application1/presentation/trending_sounds_tab_container_page/models/trending_sounds_tab_container_model.dart';
import 'package:flutter/material.dart';

class TrendingSoundsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TrendingSoundsTabContainerController(this.trendingSoundsTabContainerModelObj);

  Rx<TrendingSoundsTabContainerModel> trendingSoundsTabContainerModelObj;

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
