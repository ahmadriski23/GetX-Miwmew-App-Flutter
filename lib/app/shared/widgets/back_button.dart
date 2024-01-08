import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget backButton() {
  return InkWell(
      onTap: () async {
        Get.back();
      },
      child: const Icon(
        Icons.arrow_back_ios,
        size: 20,
      ));
}
