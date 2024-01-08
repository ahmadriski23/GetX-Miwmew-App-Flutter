import 'package:get/get.dart';

import '../controllers/started_controller.dart';

class StartedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartedController>(
      () => StartedController(),
    );
  }
}
