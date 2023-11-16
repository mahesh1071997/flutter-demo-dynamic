import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/comments_bottomsheet/models/comments_model.dart';import 'package:flutter/material.dart';class CommentsController extends GetxController {TextEditingController statusDefaultController = TextEditingController();

Rx<CommentsModel> commentsModelObj = CommentsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusDefaultController.dispose(); } 
 }
