import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';
import '../utils/text_style.dart';

class QProcessButton extends StatelessWidget {
  const QProcessButton({super.key, required this.onTap, required this.title});
  final VoidCallback onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: AppText.boldText
                .copyWith(fontSize: 16, color: AppColors.kWhiteColor),
          ),
        ),
      ),
    );
  }
}
