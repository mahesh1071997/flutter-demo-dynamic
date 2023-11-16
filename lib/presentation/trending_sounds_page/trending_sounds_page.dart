import '../trending_sounds_page/widgets/listplay1_item_widget.dart';
import '../trending_sounds_page/widgets/listplay2_item_widget.dart';
import 'controller/trending_sounds_controller.dart';
import 'models/listplay1_item_model.dart';
import 'models/listplay2_item_model.dart';
import 'models/trending_sounds_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

class TrendingSoundsPage extends StatelessWidget {
  TrendingSoundsController controller =
      Get.put(TrendingSoundsController(TrendingSoundsModel().obs));

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
                          CustomImageView(
                            imagePath: ImageConstant.imgImage80x806,
                            height: getSize(
                              80,
                            ),
                            width: getSize(
                              80,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                              top: 2,
                              bottom: 4,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_favorite_girl".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold18Gray900,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Text(
                                    "lbl_justin_bieber".tr,
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
                                Padding(
                                  padding: getPadding(
                                    top: 9,
                                  ),
                                  child: Text(
                                    "lbl_01_00".tr,
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
                              top: 31,
                              bottom: 31,
                            ),
                            child: Text(
                              "lbl_387_5m".tr,
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
                              top: 28,
                              bottom: 28,
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
                            itemCount: controller.trendingSoundsModelObj.value
                                .listplay1ItemList.value.length,
                            itemBuilder: (context, index) {
                              Listplay1ItemModel model = controller
                                  .trendingSoundsModelObj
                                  .value
                                  .listplay1ItemList
                                  .value[index];
                              return Listplay1ItemWidget(
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
                            CustomImageView(
                              imagePath: ImageConstant.imgImage80x806,
                              height: getSize(
                                80,
                              ),
                              width: getSize(
                                80,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  16,
                                ),
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
                                    "lbl_yummy".tr,
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
                                      "lbl_justin_bieber".tr,
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
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                    ),
                                    child: Text(
                                      "lbl_00_45".tr,
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
                                top: 31,
                                bottom: 31,
                              ),
                              child: Text(
                                "lbl_289_4m".tr,
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
                                top: 28,
                                bottom: 28,
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
                            itemCount: controller.trendingSoundsModelObj.value
                                .listplay2ItemList.value.length,
                            itemBuilder: (context, index) {
                              Listplay2ItemModel model = controller
                                  .trendingSoundsModelObj
                                  .value
                                  .listplay2ItemList
                                  .value[index];
                              return Listplay2ItemWidget(
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
