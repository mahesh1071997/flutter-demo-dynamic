import 'package:get/get.dart';import 'listellipse6_item_model.dart';import 'listaction1_item_model.dart';import 'package:tiki_application1/data/models/selectionPopupModel/selection_popup_model.dart';class AllActivityDropdownModel {Rx<List<Listellipse6ItemModel>> listellipse6ItemList = Rx(List.generate(3,(index) => Listellipse6ItemModel()));

Rx<List<Listaction1ItemModel>> listaction1ItemList = Rx(List.generate(2,(index) => Listaction1ItemModel()));

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
