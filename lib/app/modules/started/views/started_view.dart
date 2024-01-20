import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/utils/colors.dart';

import '../../../shared/utils/text_style.dart';
import '../controllers/started_controller.dart';

class StartedView extends GetView<StartedController> {
  const StartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Miew Meow',
              style: AppText.boldText
                  .copyWith(fontSize: 20, color: AppColors.kPrimaryColor),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              'The best Pet Shop Application in your town',
              style: AppText.regulerText.copyWith(
                fontSize: 14,
                color: AppColors.kGreyColor,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: InkWell(
                onTap: () {
                  Get.toNamed('/login');
                },
                child: Container(
                  height: 50,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: AppText.boldText.copyWith(
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 500,
              width: Get.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/cat-start1.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
