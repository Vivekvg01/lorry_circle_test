import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lorry_circle_test/app/custom_widgets/custom_button_widget.dart';
import 'package:lorry_circle_test/app/custom_widgets/custom_textfeild.dart';
import 'package:lorry_circle_test/app/utils/app_colors.dart';
import 'package:lorry_circle_test/app/utils/app_sizes.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    const Text(
                      'Test App',
                      style: TextStyle(
                        color: AppColors.kRedColor,
                        fontSize: 31,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    sizedHeight(Get.height * 0.06),
                    CustomTextFeild(
                      hintText: 'First Name',
                      validateText: 'please enter your first name',
                      icon: Icons.person,
                      textController: controller.firstNameController,
                      maxLines: 1,
                    ),
                    sizedHeight(Get.height * 0.02),
                    CustomTextFeild(
                      hintText: 'Last Name',
                      validateText: 'please enter your last name',
                      icon: Icons.person,
                      textController: controller.lastNameController,
                      maxLines: 1,
                    ),
                    sizedHeight(Get.height * 0.01),
                    GetBuilder<RegisterController>(
                      builder: (context) {
                        return Row(
                          children: [
                            Radio(
                              value: 'Male',
                              groupValue: controller.selectedGender,
                              activeColor: AppColors.kRedColor,
                              onChanged: (val) {
                                controller.setGender(val);
                              },
                            ),
                            const Text(
                              'Male',
                            ),
                            Radio(
                              value: 'Female',
                              groupValue: controller.selectedGender,
                              activeColor: AppColors.kRedColor,
                              onChanged: (val) {
                                controller.setGender(val);
                              },
                            ),
                            const Text(
                              'Female',
                            ),
                            Radio(
                              value: 'Other',
                              groupValue: controller.selectedGender,
                              activeColor: AppColors.kRedColor,
                              onChanged: (val) {
                                controller.setGender(val);
                              },
                            ),
                            const Text(
                              'Other',
                            ),
                          ],
                        );
                      },
                    ),
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        hintText: 'Select your language',
                        hintStyle: const TextStyle(
                          color: AppColors.kWhiteColor,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        contentPadding: const EdgeInsets.all(8.0),
                        fillColor: AppColors.kBlackColor,
                        filled: true,
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.kRedColor,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select your language';
                        }
                        return null;
                      },
                      items: controller.languages
                          .map(
                            (item) => DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                    color: AppColors.kWhiteColor),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (String? newValue) {
                        controller.currentLanguageValue.value = newValue!;
                      },
                      dropdownColor: AppColors.kBlackColor,
                    ),
                    sizedHeight(Get.height * 0.02),
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        hintText: 'Choose 1 for success 0 for faliure',
                        hintStyle: const TextStyle(
                          color: AppColors.kWhiteColor,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        contentPadding: const EdgeInsets.all(8.0),
                        fillColor: AppColors.kBlackColor,
                        filled: true,
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.kRedColor,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please choose a status that you want';
                        }
                        return null;
                      },
                      items: controller.respStatus
                          .map(
                            (item) => DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                    color: AppColors.kWhiteColor),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (String? newValue) {
                        controller.currentStatus.value = newValue!;
                      },
                      dropdownColor: AppColors.kBlackColor,
                    ),
                    sizedHeight(Get.height * 0.02),
                    CustomTextFeild(
                      textController: controller.addressController,
                      maxLines: 3,
                      hintText: 'Address',
                      icon: Icons.location_on,
                      validateText: 'please enter your address',
                      prefixBottomPadding: 35,
                    ),
                    sizedHeight(Get.height * 0.05),
                    CustomButton(
                      text: 'Submit',
                      onPressed: () {
                        controller.onSubmitButtonClick();
                      },
                      textColor: AppColors.kWhiteColor,
                      buttonColor: AppColors.kRedColor,
                      radius: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
