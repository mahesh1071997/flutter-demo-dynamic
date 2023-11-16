import '../controller/trending_hashtag_details_controller.dart';
import 'package:get/get.dart';

class TrendingHashtagDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingHashtagDetailsController());
  }
}
