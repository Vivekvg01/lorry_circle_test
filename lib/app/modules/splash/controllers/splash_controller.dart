import 'package:get/get.dart';
import 'package:lorry_circle_test/app/modules/register/views/register_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    gotoRegisterPage();
    super.onInit();
  }

  Future<void> gotoRegisterPage() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.to(
      () => const RegisterView(),
    );
  }
}
