import '../controller/weekly_ranking_tab_container_controller.dart';
import 'package:get/get.dart';

class WeeklyRankingTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WeeklyRankingTabContainerController());
  }
}
