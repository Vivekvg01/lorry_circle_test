import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lorry_circle_test/app/utils/app_colors.dart';

class HomeController extends GetxController {
  
  ///Image can be picked by using image_picker package.
  ///The path of the image willbe stored to selectedImage path which is a
  ///reactive variable.When the path will assigned to selectedImage path the UI will be updated.
  var selectedImagePath = ''.obs;
  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
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
