import 'package:get/get.dart';

class DetailCategoryController extends GetxController {
  //TODO: Implement DetailCategoryController

  final count = 0.obs;
  String? tagHero;
  @override
  void onInit() {
    super.onInit();
    var arguments = Get.arguments;
    tagHero = arguments['tagHero'];
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
