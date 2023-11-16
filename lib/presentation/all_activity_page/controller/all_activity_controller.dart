import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/all_activity_page/models/all_activity_model.dart';class AllActivityController extends GetxController {AllActivityController(this.allActivityModelObj);

Rx<AllActivityModel> allActivityModelObj;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; allActivityModelObj.value.dropdownItemList.value.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); allActivityModelObj.value.dropdownItemList.refresh(); } 
 }
