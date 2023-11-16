import '../controller/sound_used_controller.dart';
import 'package:get/get.dart';

class SoundUsedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SoundUsedController());
  }
}
