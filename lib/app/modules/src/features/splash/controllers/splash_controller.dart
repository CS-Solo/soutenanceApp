import 'package:get/get.dart';

class SplashController extends GetxController {
  void checkUserSession() async {
    await Future.delayed(const Duration(seconds: 4));
    Get.offAllNamed('/login');
  }
}
