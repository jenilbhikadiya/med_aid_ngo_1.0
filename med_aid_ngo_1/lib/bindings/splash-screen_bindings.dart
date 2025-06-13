// ignore: file_names
import 'package:get/get.dart';
import 'package:med_aid_ngo_1/features/authentication/controllers/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
