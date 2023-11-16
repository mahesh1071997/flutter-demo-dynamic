import '../controller/trending_sounds_details_controller.dart';
import 'package:get/get.dart';

class TrendingSoundsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingSoundsDetailsController());
  }
}
