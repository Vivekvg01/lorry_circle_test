import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lorry_circle_test/app/modules/register/views/widgets/custom_textfeild_widget.dart';
import 'package:lorry_circle_test/app/utils/app_sizes.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextFeild(
                    hintText: 'First Name',
                    validateText: 'please enter your first name',
                    icon: Icons.person,
                    textController: controller.firstNameController,
                  ),
                  sizedHeight(Get.height * 0.02),
                  CustomTextFeild(
                    hintText: 'Last Name',
                    validateText: 'please enter your last name',
                    icon: Icons.person,
                    textController: controller.firstNameController,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
