import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lorry_circle_test/app/utils/app_colors.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
      body: Center(
        child: TextLiquidFill(
          boxHeight: Get.height,
          loadDuration: const Duration(seconds: 1),
          text: 'TEST APP',
          waveColor: AppColors.kRedColor,
          textStyle: const TextStyle(
            fontSize: 40,
            color: AppColors.kBlackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
