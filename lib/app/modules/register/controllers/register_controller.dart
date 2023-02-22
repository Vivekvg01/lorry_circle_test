import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  //TextEditin controller for getting input values
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  //Key for validing the form
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RxString? gender;

  RxString dropdownCurrentValue = "English".obs;
  List<String> dropdownValues = [
    'English',
    'Malayalm',
    'Tamil',
    "Telugu",
    "Kannada"
  ];

  void onSubmitButtonClick() {
    if (formKey.currentState!.validate()) {
      print('success');
    }
  }
}
