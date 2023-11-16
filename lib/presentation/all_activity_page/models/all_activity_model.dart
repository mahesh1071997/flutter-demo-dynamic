import 'package:get/get.dart';import 'listellipse5_item_model.dart';import 'listaction_item_model.dart';import 'package:tiki_application1/data/models/selectionPopupModel/selection_popup_model.dart';class AllActivityModel {Rx<List<Listellipse5ItemModel>> listellipse5ItemList = Rx(List.generate(3,(index) => Listellipse5ItemModel()));

Rx<List<ListactionItemModel>> listactionItemList = Rx(List.generate(2,(index) => ListactionItemModel()));

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
