import 'package:flutter/material.dart';
import 'package:lorry_circle_test/app/utils/app_colors.dart';

class CustomTextFeild extends StatelessWidget {
  TextEditingController textController = TextEditingController();
  String? hintText;
  String? labelText;
  String validateText;
  IconData? icon;
  int? maxLines;

  CustomTextFeild({
    Key? key,
    required this.textController,
    required this.validateText,
    this.hintText,
    this.labelText,
    this.icon,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
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
        labelText: labelText,
        hintStyle: const TextStyle(color: AppColors.kGreyColor),
        labelStyle: const TextStyle(color: AppColors.kGreyColor),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        contentPadding: const EdgeInsets.all(8.0),
        fillColor: AppColors.kBlackColor,
        filled: true,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.kRedColor,
          ),
        ),
      ),
      style: const TextStyle(color: AppColors.kWhiteColor),
    );
  }
}
