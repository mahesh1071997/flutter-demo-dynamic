import '../search_results_videos_page/widgets/gridplay_item_widget.dart';
import 'controller/search_results_videos_controller.dart';
import 'models/gridplay_item_model.dart';
import 'models/search_results_videos_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

class SearchResultsVideosPage extends StatelessWidget {
  SearchResultsVideosController controller =
      Get.put(SearchResultsVideosController(SearchResultsVideosModel().obs));

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
                  top: 10,
                  right: 24,
                ),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(
                        329,
                      ),
                      crossAxisCount: 2,
                      mainAxisSpacing: getHorizontalSize(
                        8,
                      ),
                      crossAxisSpacing: getHorizontalSize(
                        8,
                      ),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.searchResultsVideosModelObj.value
                        .gridplayItemList.value.length,
                    itemBuilder: (context, index) {
                      GridplayItemModel model = controller
                          .searchResultsVideosModelObj
                          .value
                          .gridplayItemList
                          .value[index];
                      return GridplayItemWidget(
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
