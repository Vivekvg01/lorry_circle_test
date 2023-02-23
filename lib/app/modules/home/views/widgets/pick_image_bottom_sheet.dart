import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lorry_circle_test/app/utils/app_colors.dart';
import 'package:lorry_circle_test/app/utils/app_sizes.dart';

class PickImageBottomSheet extends GetView {
  const PickImageBottomSheet({
    super.key,
    required this.cameraFunction,
    required this.galleryFunction,
  });

  final VoidCallback cameraFunction;
  final VoidCallback galleryFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.2,
      color: AppColors.kBackgroundColor,
      child: Column(
        children: [
          sizedHeight(Get.height * 0.02),
          const Text(
            'PICK IMAGE FROM',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: AppColors.kWhiteColor,
            ),
          ),
          sizedHeight(Get.height * 0.03),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.kBlackColor,
                      child: IconButton(
                        onPressed: cameraFunction,
                        icon: const Icon(
                          Icons.camera,
                          color: AppColors.kRedColor,
                        ),
                      ),
                    ),
                    sizedHeight(Get.height * 0.02),
                    const Text(
                      'Camera',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ],
                ),
                sizedWidth(Get.width * 0.1),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.kBlackColor,
                      child: IconButton(
                        onPressed: galleryFunction,
                        icon: const Icon(
                          Icons.photo_sharp,
                          color: AppColors.kRedColor,
                        ),
                      ),
                    ),
                    sizedHeight(Get.height * 0.02),
                    const Text(
                      'Gallery',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
