import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/trending_sounds_page/models/trending_sounds_model.dart';class TrendingSoundsController extends GetxController {TrendingSoundsController(this.trendingSoundsModelObj);

Rx<TrendingSoundsModel> trendingSoundsModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
