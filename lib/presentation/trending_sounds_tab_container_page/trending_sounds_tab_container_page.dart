import 'controller/trending_sounds_tab_container_controller.dart';
import 'models/trending_sounds_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';
import 'package:tiki_application1/presentation/trending_hashtag_page/trending_hashtag_page.dart';
import 'package:tiki_application1/presentation/trending_sounds_page/trending_sounds_page.dart';
import 'package:tiki_application1/widgets/app_bar/appbar_image.dart';
import 'package:tiki_application1/widgets/app_bar/appbar_title.dart';
import 'package:tiki_application1/widgets/app_bar/custom_app_bar.dart';

class TrendingSoundsTabContainerPage extends StatelessWidget {
  TrendingSoundsTabContainerController controller = Get.put(
      TrendingSoundsTabContainerController(
          TrendingSoundsTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            53,
          ),
          leadingWidth: 56,
          leading: AppbarImage(
            height: getSize(
              32,
            ),
            width: getSize(
              32,
            ),
            imagePath: ImageConstant.imgFrame2,
            margin: getMargin(
              left: 24,
              top: 10,
              bottom: 11,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_trending".tr,
            margin: getMargin(
              left: 12,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                28,
              ),
              width: getSize(
                28,
              ),
              svgPath: ImageConstant.imgSearchGray900,
              margin: getMargin(
                left: 24,
                top: 12,
                right: 24,
                bottom: 13,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  39,
                ),
                width: getHorizontalSize(
                  304,
                ),
                margin: getMargin(
                  left: 39,
                  top: 28,
                ),
                child: TabBar(
                  controller: controller.autoLayoutHorizontalController,
                  labelColor: ColorConstant.deepOrangeA40001,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(
                      18,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: ColorConstant.gray500,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(
                      18,
                    ),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                  indicatorColor: ColorConstant.deepOrangeA40001,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_sounds".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_hashtag".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  671,
                ),
                child: TabBarView(
                  controller: controller.autoLayoutHorizontalController,
                  children: [
                    TrendingSoundsPage(),
                    TrendingHashtagPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
