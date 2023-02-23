import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lorry_circle_test/app/modules/home/views/home_view.dart';

class RegisterController extends GetxController {
  //TextEditin controller for getting input values
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  //Key for validing the form
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxList gender = ['Male', 'Female', 'Other'].obs;

  var selectedGender = 'Male';

  void setGender(var value) {
    selectedGender = value;
    update();
  }

  RxString dropdownCurrentValue = "English".obs; //For selected language.
  List<String> dropdownValues = [
    'English',
    'Malayalm',
    'Tamil',
    "Telugu",
    "Kannada"
  ];

  void onSubmitButtonClick() {
    if (formKey.currentState!.validate()) {
      Get.to(() => const HomeView());
    }
  }
}
