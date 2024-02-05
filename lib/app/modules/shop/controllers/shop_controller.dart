import 'package:get/get.dart';
import 'package:miwmew_app/app/services/supply_category_service.dart';

class ShopController extends GetxController {
  //TODO: Implement ShopController

  final SupplyCategoryService supplyCategoryService =
      Get.put(SupplyCategoryService());

  RxInt selectedSupplyCategoryIndex = 0.obs;
  final count = 0.obs;
  var selectedProduct = "Food".obs;
  void changeProduct(String product) {
    selectedProduct.value = product;
  }

  final List<String> products = ["Food", "Toy", "Shampoo", "Cage"];

  @override
  void onInit() {
    super.onInit();
    selectedProduct.value = "Food";
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
