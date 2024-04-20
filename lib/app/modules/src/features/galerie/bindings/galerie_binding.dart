import 'package:get/get.dart';

import '../controllers/galerie_controller.dart';

class GalerieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GalerieController>(
      () => GalerieController(),
    );
  }
}
