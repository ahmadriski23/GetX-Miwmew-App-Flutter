import 'package:get/get.dart';
import 'package:miwmew_app/app/models/category.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  var selectedCategory =
      CategoryCat(image: 'assets/images/cats.png', name: 'Cats').obs;
  void changeCategory(CategoryCat category) {
    selectedCategory.value = category;
  }

  final List<CategoryCat> category = [
    CategoryCat(image: 'assets/images/cats.png', name: 'Cats'),
    CategoryCat(image: 'assets/images/grooming.png', name: 'Grooming'),
    CategoryCat(image: 'assets/images/medicare.png', name: 'Medicare'),
    CategoryCat(image: 'assets/images/daycare.png', name: 'Daycare'),
  ];

  @override
  void onInit() {
    super.onInit();
    selectedCategory.value =
        CategoryCat(image: 'assets/images/cats.png', name: 'Cats');
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
