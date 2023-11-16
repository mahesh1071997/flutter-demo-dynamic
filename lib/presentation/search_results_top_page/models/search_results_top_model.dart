import 'package:get/get.dart';import 'listellipse_item_model.dart';import 'listplay_item_model.dart';class SearchResultsTopModel {Rx<List<ListellipseItemModel>> listellipseItemList = Rx(List.generate(2,(index) => ListellipseItemModel()));

Rx<List<ListplayItemModel>> listplayItemList = Rx(List.generate(3,(index) => ListplayItemModel()));

 }
