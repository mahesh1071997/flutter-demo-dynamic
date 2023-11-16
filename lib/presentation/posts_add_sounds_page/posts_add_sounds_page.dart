import '../posts_add_sounds_page/widgets/listplay5_item_widget.dart';
import 'controller/posts_add_sounds_controller.dart';
import 'models/listplay5_item_model.dart';
import 'models/posts_add_sounds_model.dart';
import 'package:flutter/material.dart';
import 'package:tiki_application1/core/app_export.dart';

class PostsAddSoundsPage extends StatelessWidget {
  PostsAddSoundsController controller =
      Get.put(PostsAddSoundsController(PostsAddSoundsModel().obs));

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
                    itemCount: controller.postsAddSoundsModelObj.value
                        .listplay5ItemList.value.length,
                    itemBuilder: (context, index) {
                      Listplay5ItemModel model = controller
                          .postsAddSoundsModelObj
                          .value
                          .listplay5ItemList
                          .value[index];
                      return Listplay5ItemWidget(
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
