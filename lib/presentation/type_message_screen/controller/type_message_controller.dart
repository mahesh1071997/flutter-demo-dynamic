import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/type_message_screen/models/type_message_model.dart';import 'package:flutter/material.dart';class TypeMessageController extends GetxController {TextEditingController frameController = TextEditingController();

Rx<TypeMessageModel> typeMessageModelObj = TypeMessageModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); frameController.dispose(); } 
 }
