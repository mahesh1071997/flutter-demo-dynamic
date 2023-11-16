import '../trending_hashtag_page/widgets/listplay3_item_widget.dart';
import '../trending_hashtag_page/widgets/listplay4_item_widget.dart';
import 'controller/trending_hashtag_controller.dart';
import 'models/listplay3_item_model.dart';
import 'models/listplay4_item_model.dart';
import 'models/trending_hashtag_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';
import 'package:tiki_application1/widgets/custom_icon_button.dart';

class TrendingHashtagPage extends StatelessWidget {
  TrendingHashtagController controller =
      Get.put(TrendingHashtagController(TrendingHashtagModel().obs));

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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                            height: 56,
                            width: 56,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                              top: 6,
                              bottom: 5,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_amazingfood".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold18Gray900,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "msg_trending_hashta".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanMedium14Gray700
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: getPadding(
                              top: 19,
                              bottom: 19,
                            ),
                            child: Text(
                              "lbl_827_5m".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistSemiBold14Gray700
                                  .copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowdownDeepOrangeA40001,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 21,
                              top: 16,
                              bottom: 16,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: getVerticalSize(
                          220,
                        ),
                        child: Obx(
                          () => ListView.separated(
                            padding: getPadding(
                              top: 20,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  8,
                                ),
                              );
                            },
                            itemCount: controller.trendingHashtagModelObj.value
                                .listplay3ItemList.value.length,
                            itemBuilder: (context, index) {
                              Listplay3ItemModel model = controller
                                  .trendingHashtagModelObj
                                  .value
                                  .listplay3ItemList
                                  .value[index];
                              return Listplay3ItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              height: 56,
                              width: 56,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgAirplane,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 4,
                                bottom: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_beautiful".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistRomanBold18Gray900,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 7,
                                    ),
                                    child: Text(
                                      "msg_trending_hashta".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanMedium14Gray700
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: getPadding(
                                top: 19,
                                bottom: 19,
                              ),
                              child: Text(
                                "lbl_827_5m".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistSemiBold14Gray700
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.2,
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              svgPath:
                                  ImageConstant.imgArrowdownDeepOrangeA40001,
                              height: getSize(
                                24,
                              ),
                              width: getSize(
                                24,
                              ),
                              margin: getMargin(
                                left: 21,
                                top: 16,
                                bottom: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          220,
                        ),
                        child: Obx(
                          () => ListView.separated(
                            padding: getPadding(
                              top: 20,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  8,
                                ),
                              );
                            },
                            itemCount: controller.trendingHashtagModelObj.value
                                .listplay4ItemList.value.length,
                            itemBuilder: (context, index) {
                              Listplay4ItemModel model = controller
                                  .trendingHashtagModelObj
                                  .value
                                  .listplay4ItemList
                                  .value[index];
                              return Listplay4ItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              height: 56,
                              width: 56,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgAirplane,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 6,
                                bottom: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_songforyou".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistRomanBold18Gray900,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "msg_trending_hashta".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanMedium14Gray700
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: getPadding(
                                top: 19,
                                bottom: 19,
                              ),
                              child: Text(
                                "lbl_827_5m".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistSemiBold14Gray700
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.2,
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              svgPath:
                                  ImageConstant.imgArrowdownDeepOrangeA40001,
                              height: getSize(
                                24,
                              ),
                              width: getSize(
                                24,
                              ),
                              margin: getMargin(
                                left: 21,
                                top: 16,
                                bottom: 16,
                              ),
                            ),
                          ],
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
