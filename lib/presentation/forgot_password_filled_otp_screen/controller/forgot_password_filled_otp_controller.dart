import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/forgot_password_filled_otp_screen/models/forgot_password_filled_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';class ForgotPasswordFilledOtpController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<ForgotPasswordFilledOtpModel> forgotPasswordFilledOtpModelObj = ForgotPasswordFilledOtpModel().obs;

@override void codeUpdated() { otpController.value.text = code!; } 
@override void onInit() { super.onInit(); listenForCode(); } 
@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
