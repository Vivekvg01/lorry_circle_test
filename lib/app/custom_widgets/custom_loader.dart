//spinkit loder displayed over ui
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lorry_circle_test/app/utils/app_colors.dart';

class ShowLoaderOverScreen {
  static showLoader() {
    Get.dialog(
      const Center(
        child: SpinKitFoldingCube(
          color: AppColors.kRedColor,
        ),
      ),
    );
  }

  static void stopLoader() {
    if (Get.isDialogOpen!) Get.back();
  }
}