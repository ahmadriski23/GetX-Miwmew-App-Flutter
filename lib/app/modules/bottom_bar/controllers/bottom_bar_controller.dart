import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miwmew_app/app/modules/category/bindings/category_binding.dart';
import 'package:miwmew_app/app/modules/category/views/category_view.dart';
import 'package:miwmew_app/app/modules/home/bindings/home_binding.dart';
import 'package:miwmew_app/app/modules/home/views/home_view.dart';
import 'package:miwmew_app/app/modules/profile/bindings/profile_binding.dart';
import 'package:miwmew_app/app/modules/profile/views/profile_view.dart';
import 'package:miwmew_app/app/modules/shop/bindings/shop_binding.dart';
import 'package:miwmew_app/app/modules/shop/views/shop_view.dart';

class BottomBarController extends GetxController {
  //TODO: Implement BottomBarController

  final count = 0.obs;

  var selectedPage = 0.obs;

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/home') {
      return GetPageRoute(
        settings: settings,
        page: () => const HomeView(),
        binding: HomeBinding(),
      );
    }

    if (settings.name == '/shop') {
      return GetPageRoute(
        settings: settings,
        page: () => const ShopView(),
        binding: ShopBinding(),
      );
    }

    if (settings.name == '/category') {
      return GetPageRoute(
        settings: settings,
        page: () => const CategoryView(),
        binding: CategoryBinding(),
      );
    }

    if (settings.name == '/profile') {
      return GetPageRoute(
        settings: settings,
        page: () => const ProfileView(),
        binding: ProfileBinding(),
      );
    }
    return null;
  }

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
