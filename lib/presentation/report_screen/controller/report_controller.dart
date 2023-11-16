import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/report_screen/models/report_model.dart';class ReportController extends GetxController {Rx<ReportModel> reportModelObj = ReportModel().obs;

Rx<String> radioGroup = "".obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
