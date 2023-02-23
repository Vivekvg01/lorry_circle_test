import 'package:get/get.dart';
import 'package:lorry_circle_test/app/modules/home/controllers/home_controller.dart';

import '../controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
