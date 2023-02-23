import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lorry_circle_test/app/utils/app_colors.dart';

class HomeController extends GetxController {
  final ImagePicker _picker = ImagePicker();

  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);

    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      selectedImageSize.value =
          "${(File(selectedImagePath.value).lengthSync() / 1024 / 1024)
              .toStringAsFixed(2)}Mb";
    } else {
      Get.snackbar(
        'Error',
        'No image selected',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.kRedColor,
        colorText: AppColors.kWhiteColor,
      );
    }
  }
}
