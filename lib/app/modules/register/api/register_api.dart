import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lorry_circle_test/app/custom_widgets/custom_loader.dart';
import 'package:lorry_circle_test/app/modules/home/views/home_view.dart';
import 'package:lorry_circle_test/app/utils/app_colors.dart';

class RegisterApi {
  Future<void> registerUser(
    String firstName,
    String lastName,
    String gender,
    String language,
    String address,
    int status,
  ) async {
    ShowLoaderOverScreen.showLoader();
    final url =
        Uri.parse('https://phase2qavps.lorrycircle.com/api/lookup/register');
    Map<String, dynamic> reqBody = {
      "firstName": firstName,
      "lastName": lastName,
      "gender": gender,
      "language": language,
      "address": address,
      "status": status,
    };
    var header = {'content-type': 'application/json'};
    try {
      http.Response response = await http.post(
        url,
        body: jsonEncode(reqBody),
        headers: header,
      );
      if (response.statusCode == 200) {
        ShowLoaderOverScreen.stopLoader();
        Get.snackbar(
          'User Registed',
          'User Registered Successully',
          snackPosition: SnackPosition.TOP,
          backgroundColor: AppColors.kGreenColor,
          colorText: AppColors.kWhiteColor,
        );
        Get.to(() => const HomeView());
      } else if (response.statusCode == 400) {
        final data = jsonDecode(response.body);
        final errorMessage = data['message'];
        ShowLoaderOverScreen.stopLoader();
        Get.showSnackbar(
          GetSnackBar(
            message: errorMessage,
            backgroundColor: AppColors.kRedColor,
            duration: const Duration(seconds: 3),
            snackStyle: SnackStyle.FLOATING,
          ),
        );
        ShowLoaderOverScreen.stopLoader();
      } else {
        ShowLoaderOverScreen.stopLoader();
        Get.showSnackbar(
          const GetSnackBar(
            message: 'Something went wrong!',
            backgroundColor: AppColors.kRedColor,
            duration: Duration(seconds: 3),
            snackStyle: SnackStyle.FLOATING,
          ),
        );
        ShowLoaderOverScreen.stopLoader();
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
