import '../search_results_users_page/widgets/listellipse1_item_widget.dart';
import 'controller/search_results_users_controller.dart';
import 'models/listellipse1_item_model.dart';
import 'models/search_results_users_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

class SearchResultsUsersPage extends StatelessWidget {
  SearchResultsUsersController controller =
      Get.put(SearchResultsUsersController(SearchResultsUsersModel().obs));

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
                  left: 23,
                  top: 10,
                  right: 25,
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
                    itemCount: controller.searchResultsUsersModelObj.value
                        .listellipse1ItemList.value.length,
                    itemBuilder: (context, index) {
                      Listellipse1ItemModel model = controller
                          .searchResultsUsersModelObj
                          .value
                          .listellipse1ItemList
                          .value[index];
                      return Listellipse1ItemWidget(
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
