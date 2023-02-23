import 'package:flutter/material.dart';
import 'package:lorry_circle_test/app/utils/app_colors.dart';

class CustomTextFeild extends StatelessWidget {
  TextEditingController textController = TextEditingController();
  String? hintText;
  String? labelText;
  String validateText;
  IconData? icon;
  int? maxLines;
  double prefixBottomPadding;

  CustomTextFeild({
    Key? key,
    required this.textController,
    required this.validateText,
    this.hintText,
    this.icon,
    this.maxLines,
    this.prefixBottomPadding = 0.0,
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
        prefixIcon: Padding(
          padding: EdgeInsets.only(bottom: prefixBottomPadding),
          child: Icon(icon, color: AppColors.kWhiteColor),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: AppColors.kGreyColor),
        labelStyle: const TextStyle(color: AppColors.kGreyColor),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
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
