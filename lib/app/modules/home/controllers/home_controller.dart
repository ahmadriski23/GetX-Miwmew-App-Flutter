import 'package:get/get.dart';
import 'package:miwmew_app/app/services/category_service.dart';

class HomeController extends GetxController {
  final CategoryService categoryService = Get.put(CategoryService());

  RxInt selectedCategoryIndex = 0.obs;
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
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
