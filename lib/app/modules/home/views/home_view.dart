import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lorry_circle_test/app/modules/home/views/widgets/pick_image_bottom_sheet.dart';
import 'package:lorry_circle_test/app/utils/app_colors.dart';
import 'package:lorry_circle_test/app/utils/app_sizes.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ADD YOUR IMAGE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: AppColors.kWhiteColor,
              ),
            ),
            sizedHeight(Get.height * 0.07),
            GestureDetector(
              onTap: () {
                Get.bottomSheet(
                  PickImageBottomSheet(
                    cameraFunction: () {
                      controller.getImage(ImageSource.camera);
                      Get.back();
                    },
                  ),
                );
              },
              child: Obx(
                () => controller.selectedImagePath.value == ''
                    ? const CircleAvatar(
                        backgroundColor: AppColors.kGreyColor,
                        radius: 100,
                        child: Padding(
                          padding: EdgeInsets.all(11),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: AppColors.kBlackColor,
                              child: Icon(Icons.camera_alt),
                            ),
                          ),
                        ),
                      )
                    : CircleAvatar(
                        backgroundImage:
                            FileImage(File(controller.selectedImagePath.value)),
                        radius: 100,
                        child: const Padding(
                          padding: EdgeInsets.all(11),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: AppColors.kBlackColor,
                              child: Icon(Icons.camera_alt),
                            ),
                          ),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
