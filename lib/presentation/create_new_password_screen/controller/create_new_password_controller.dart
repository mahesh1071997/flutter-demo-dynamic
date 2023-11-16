import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/create_new_password_screen/models/create_new_password_model.dart';import 'package:flutter/material.dart';class CreateNewPasswordController extends GetxController {TextEditingController statusFillTypePasswordController = TextEditingController();

TextEditingController statusFillTypePasswordOneController = TextEditingController();

Rx<CreateNewPasswordModel> createNewPasswordModelObj = CreateNewPasswordModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusFillTypePasswordController.dispose(); statusFillTypePasswordOneController.dispose(); } 
 }
