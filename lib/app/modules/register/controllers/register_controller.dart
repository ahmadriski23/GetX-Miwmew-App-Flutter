import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/utils/colors.dart';

import '../../../shared/utils/text_style.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController
  final count = 0.obs;
  Rx<DateTime> selectedDate = DateTime.now().obs;

  void selectDate() {
    showCupertinoModalPopup(
      context: Get.context!,
      builder: (_) => Container(
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: 350,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(200, 0, 200, 0),
                child: Container(
                  height: 5,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.kGreyColor,
                  ),
                ),
              ),
              SizedBox(
                height: 250,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime.now(),
                  onDateTimeChanged: (val) {},
                ),
              ),
              CupertinoButton(
                  child: Text(
                    'OK',
                    style: AppText.boldText.copyWith(
                      fontSize: 14,
                      color: AppColors.kGreyColor,
                    ),
                  ),
                  onPressed: () => Get.back()),
            ],
          ),
        ),
      ),
    );
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
