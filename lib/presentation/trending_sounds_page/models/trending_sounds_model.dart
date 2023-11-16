import 'package:get/get.dart';import 'listplay1_item_model.dart';import 'listplay2_item_model.dart';class TrendingSoundsModel {Rx<List<Listplay1ItemModel>> listplay1ItemList = Rx(List.generate(3,(index) => Listplay1ItemModel()));

Rx<List<Listplay2ItemModel>> listplay2ItemList = Rx(List.generate(3,(index) => Listplay2ItemModel()));

 }
