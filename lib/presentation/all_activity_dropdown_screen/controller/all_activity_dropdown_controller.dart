import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/all_activity_dropdown_screen/models/all_activity_dropdown_model.dart';class AllActivityDropdownController extends GetxController {Rx<AllActivityDropdownModel> allActivityDropdownModelObj = AllActivityDropdownModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; allActivityDropdownModelObj.value.dropdownItemList.value.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); allActivityDropdownModelObj.value.dropdownItemList.refresh(); } 
 }
