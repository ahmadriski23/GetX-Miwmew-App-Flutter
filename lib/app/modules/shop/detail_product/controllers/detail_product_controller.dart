import 'package:get/get.dart';
import 'package:miwmew_app/app/services/supply_service.dart';

class DetailProductController extends GetxController {
  SupplyService supplyService = Get.put(SupplyService());
  //TODO: Implement DetailProductController
  RxBool isFavorite = false.obs;
  String? tagHero;
  isFavoriteToggle() {
    isFavorite.value = !isFavorite.value;
  }

  int? id;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    var arguments = Get.arguments;
    id = arguments['id'];
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
