import 'package:get/get.dart';

class DetailProductController extends GetxController {
  //TODO: Implement DetailProductController
  RxBool isFavorite = false.obs;
  String? tagHero;
  isFavoriteToggle() {
    isFavorite.value = !isFavorite.value;
  }

  final count = 0.obs;
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
