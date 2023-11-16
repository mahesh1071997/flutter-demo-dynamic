import '../controller/manage_accounts_controller.dart';
import 'package:get/get.dart';

class ManageAccountsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManageAccountsController());
  }
}
