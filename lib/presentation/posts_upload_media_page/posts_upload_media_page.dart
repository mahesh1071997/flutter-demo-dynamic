import '../posts_upload_media_page/widgets/gridcheckmark_item_widget.dart';
import 'controller/posts_upload_media_controller.dart';
import 'models/gridcheckmark_item_model.dart';
import 'models/posts_upload_media_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

class PostsUploadMediaPage extends StatelessWidget {
  PostsUploadMediaController controller =
      Get.put(PostsUploadMediaController(PostsUploadMediaModel().obs));

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
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(
                        122,
                      ),
                      crossAxisCount: 3,
                      mainAxisSpacing: getHorizontalSize(
                        8,
                      ),
                      crossAxisSpacing: getHorizontalSize(
                        8,
                      ),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.postsUploadMediaModelObj.value
                        .gridcheckmarkItemList.value.length,
                    itemBuilder: (context, index) {
                      GridcheckmarkItemModel model = controller
                          .postsUploadMediaModelObj
                          .value
                          .gridcheckmarkItemList
                          .value[index];
                      return GridcheckmarkItemWidget(
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
