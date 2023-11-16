import 'package:tiki_application1/core/app_export.dart';
import 'package:tiki_application1/presentation/search_results_users_tab_container_screen/models/search_results_users_tab_container_model.dart';
import 'package:flutter/material.dart';

class SearchResultsUsersTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController stateFilledSearchController = TextEditingController();

  Rx<SearchResultsUsersTabContainerModel>
      searchResultsUsersTabContainerModelObj =
      SearchResultsUsersTabContainerModel().obs;

  late TabController frame5Controller =
      Get.put(TabController(vsync: this, length: 4));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    stateFilledSearchController.dispose();
  }
}
