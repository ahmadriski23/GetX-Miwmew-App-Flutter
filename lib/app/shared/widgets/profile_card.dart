import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/utils/text_style.dart';
import '../utils/colors.dart';

class QProfileCard extends StatelessWidget {
  const QProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: Get.width,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: const Offset(3, 3),
                color: AppColors.kGreyColor,
                blurRadius: 12)
          ],
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
              child: Container(
                color: AppColors.kWhiteColor,
                child: Image.asset(
                  'assets/images/cat1.png',
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              'Ahmad Riski',
              style: AppText.boldText.copyWith(
                fontSize: 14,
                color: AppColors.kWhiteColor,
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () => Get.toNamed('cart'),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: AppColors.kWhiteColor,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
