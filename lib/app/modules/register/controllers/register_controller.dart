import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lorry_circle_test/app/modules/register/api/register_api.dart';

class RegisterController extends GetxController {
  //TextEditin controller for getting input values
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  //Key for validing the form
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  ///By default the value of gender is male.
  ///It would change when we tap according to the radio button.
  var selectedGender = 'Male';
  RxList gender = ['Male', 'Female', 'Other'].obs;

  void setGender(var value) {
    selectedGender = value;
    update();
  }

  RxString currentLanguageValue = "English".obs; //For selected language.
  List<String> languages = [
    'English',
    'Malayalam',
    'Hindi',
    'Tamil',
    "Telugu",
    "Kannada"
  ];

  ///After the validation of the form the register api would be called.
  ///Then it shows the response.
  Future<void> onSubmitButtonClick() async {
    if (formKey.currentState!.validate()) {
      await RegisterApi().registerUser(
        firstNameController.text,
        lastNameController.text,
        selectedGender,
        currentLanguageValue.value,
        addressController.text,
        1,
      );
    }
  }
}
