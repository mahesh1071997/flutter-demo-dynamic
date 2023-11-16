import 'package:get/get.dart';import 'listellipse7_item_model.dart';import 'listmessage_item_model.dart';class MessagesModel {Rx<List<Listellipse7ItemModel>> listellipse7ItemList = Rx(List.generate(5,(index) => Listellipse7ItemModel()));

Rx<List<ListmessageItemModel>> listmessageItemList = Rx(List.generate(6,(index) => ListmessageItemModel()));

 }
