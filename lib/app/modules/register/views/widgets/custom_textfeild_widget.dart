import 'package:flutter/material.dart';
import 'package:lorry_circle_test/app/utils/app_colors.dart';

class CustomTextFeild extends StatelessWidget {
  String hintText;
  String validateText;
  IconData icon;
  TextEditingController textController = TextEditingController();

  CustomTextFeild({
    Key? key,
    required this.hintText,
    required this.validateText,
    required this.icon,
    required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validateText;
        }
        return null;
      },
      controller: textController,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: AppColors.kWhiteColor),
        hintText: hintText,
        hintStyle: const TextStyle(color: AppColors.kWhiteColor),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
