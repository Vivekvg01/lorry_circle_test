import 'package:get/get.dart';
import 'package:lorry_circle_test/app/modules/register/controllers/register_controller.dart';
import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
  }
}
