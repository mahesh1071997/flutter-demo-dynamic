import 'package:tiki_application1/core/app_export.dart';import 'package:tiki_application1/presentation/fill_your_profile_blank_form_screen/models/fill_your_profile_blank_form_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';class FillYourProfileBlankFormController extends GetxController {TextEditingController statusDefaultController = TextEditingController();

TextEditingController statusDefaultOneController = TextEditingController();

TextEditingController statusDefaultTwoController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController statusDefaultThreeController = TextEditingController();

Rx<FillYourProfileBlankFormModel> fillYourProfileBlankFormModelObj = FillYourProfileBlankFormModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusDefaultController.dispose(); statusDefaultOneController.dispose(); statusDefaultTwoController.dispose(); phoneNumberController.dispose(); statusDefaultThreeController.dispose(); } 
 }
