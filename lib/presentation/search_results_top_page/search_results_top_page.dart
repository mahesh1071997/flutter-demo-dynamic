import '../search_results_top_page/widgets/listellipse_item_widget.dart';
import '../search_results_top_page/widgets/listplay_item_widget.dart';
import 'controller/search_results_top_controller.dart';
import 'models/listellipse_item_model.dart';
import 'models/listplay_item_model.dart';
import 'models/search_results_top_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

class SearchResultsTopPage extends StatelessWidget {
  SearchResultsTopController controller =
      Get.put(SearchResultsTopController(SearchResultsTopModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_users".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold20,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
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
                            itemCount: controller.searchResultsTopModelObj.value
                                .listellipseItemList.value.length,
                            itemBuilder: (context, index) {
                              ListellipseItemModel model = controller
                                  .searchResultsTopModelObj
                                  .value
                                  .listellipseItemList
                                  .value[index];
                              return ListellipseItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 31,
                        ),
                        child: Text(
                          "lbl_videos".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20,
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          216,
                        ),
                        child: Obx(
                          () => ListView.separated(
                            padding: getPadding(
                              top: 16,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  8,
                                ),
                              );
                            },
                            itemCount: controller.searchResultsTopModelObj.value
                                .listplayItemList.value.length,
                            itemBuilder: (context, index) {
                              ListplayItemModel model = controller
                                  .searchResultsTopModelObj
                                  .value
                                  .listplayItemList
                                  .value[index];
                              return ListplayItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
