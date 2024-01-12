import 'package:get/get.dart';

class ShopController extends GetxController {
  //TODO: Implement ShopController

  final count = 0.obs;
  var selectedProduct = "food".obs;
  void changeProduct(String product) {
    selectedProduct.value = product;
  }

  final List<String> products = ["Food", "Shampoo", "Cage"];

  @override
  void onInit() {
    super.onInit();
    selectedProduct.value = "food";
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
