import 'package:get/get.dart';

import '../controllers/simulasi_controller.dart';

class SimulasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SimulasiController>(
      () => SimulasiController(),
    );
  }
}
