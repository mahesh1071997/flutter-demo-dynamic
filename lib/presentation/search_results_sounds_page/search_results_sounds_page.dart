import '../search_results_sounds_page/widgets/listtitle_item_widget.dart';
import 'controller/search_results_sounds_controller.dart';
import 'models/listtitle_item_model.dart';
import 'models/search_results_sounds_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

class SearchResultsSoundsPage extends StatelessWidget {
  SearchResultsSoundsController controller =
      Get.put(SearchResultsSoundsController(SearchResultsSoundsModel().obs));

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
                    itemCount: controller.searchResultsSoundsModelObj.value
                        .listtitleItemList.value.length,
                    itemBuilder: (context, index) {
                      ListtitleItemModel model = controller
                          .searchResultsSoundsModelObj
                          .value
                          .listtitleItemList
                          .value[index];
                      return ListtitleItemWidget(
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
