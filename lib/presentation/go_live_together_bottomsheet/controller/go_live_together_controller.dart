import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/go_live_together_bottomsheet/models/go_live_together_model.dart';class GoLiveTogetherController extends GetxController {Rx<GoLiveTogetherModel> goLiveTogetherModelObj = GoLiveTogetherModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
