import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/search_type_keyword_screen/models/search_type_keyword_model.dart';import 'package:flutter/material.dart';class SearchTypeKeywordController extends GetxController {TextEditingController stateActiveSearchController = TextEditingController();

Rx<SearchTypeKeywordModel> searchTypeKeywordModelObj = SearchTypeKeywordModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); stateActiveSearchController.dispose(); } 
 }
