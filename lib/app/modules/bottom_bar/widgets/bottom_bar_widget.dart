import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:miwmew_app/app/modules/bottom_bar/controllers/bottom_bar_controller.dart';

import '../../../shared/utils/colors.dart';

bottomNavBar(int selectedPage) {
  return Container(
    height: 65,
    width: Get.width,
    decoration: BoxDecoration(
      color: AppColors.kWhiteColor,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
      boxShadow: [
        BoxShadow(
          color: AppColors.kGreyShade200,
          blurRadius: 5,
          offset: const Offset(0, 0.5),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          selectedPage == 0
              ? Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColors.kSecondColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    IconlyLight.home,
                    color: AppColors.kWhiteColor,
                  ),
                )
              : InkWell(
                  onTap: () {
                    Get.find<BottomBarController>().selectedPage.value = 0;
                    Get.toNamed('/home', id: 1);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      IconlyBold.home,
                      color: AppColors.kGreyColor,
                    ),
                  ),
                ),
          selectedPage == 1
              ? Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColors.kSecondColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    IconlyLight.buy,
                    color: AppColors.kWhiteColor,
                  ),
                )
              : InkWell(
                  onTap: () {
                    Get.find<BottomBarController>().selectedPage.value = 1;
                    Get.toNamed('/shop', id: 1);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      IconlyBold.buy,
                      color: AppColors.kGreyColor,
                    ),
                  ),
                ),
          selectedPage == 2
              ? Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColors.kSecondColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    IconlyLight.category,
                    color: AppColors.kWhiteColor,
                  ),
                )
              : InkWell(
                  onTap: () {
                    Get.find<BottomBarController>().selectedPage.value = 2;
                    Get.toNamed('/category', id: 1);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      IconlyBold.category,
                      color: AppColors.kGreyColor,
                    ),
                  ),
                ),
          selectedPage == 3
              ? Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColors.kSecondColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    IconlyLight.profile,
                    color: AppColors.kWhiteColor,
                  ),
                )
              : InkWell(
                  onTap: () {
                    Get.find<BottomBarController>().selectedPage.value = 3;
                    Get.toNamed('/category', id: 1);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      IconlyBold.profile,
                      color: AppColors.kGreyColor,
                    ),
                  ),
                ),
        ],
      ),
    ),
  );
}
