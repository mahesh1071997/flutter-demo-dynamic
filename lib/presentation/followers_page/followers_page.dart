import '../followers_page/widgets/followers_item_widget.dart';
import 'controller/followers_controller.dart';
import 'models/followers_item_model.dart';
import 'models/followers_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

class FollowersPage extends StatelessWidget {
  FollowersController controller =
      Get.put(FollowersController(FollowersModel().obs));

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
                        .followersModelObj.value.followersItemList.value.length,
                    itemBuilder: (context, index) {
                      FollowersItemModel model = controller.followersModelObj
                          .value.followersItemList.value[index];
                      return FollowersItemWidget(
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
