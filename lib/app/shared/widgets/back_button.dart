import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/utils/colors.dart';

Widget backButton() {
  return InkWell(
      onTap: () async {
        Get.back();
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColors.kWhiteColor,
            size: 20,
          ),
        ),
      ));
}
