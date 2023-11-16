import 'package:get/get.dart';import 'listnov_item_model.dart';class WhenIsYourBirthdayModel {Rx<DateTime>? selectedDateTxt = Rx(DateTime.now());

Rx<String> dateTxt = Rx("");

Rx<List<ListnovItemModel>> listnovItemList = Rx(List.generate(3,(index) => ListnovItemModel()));

 }
