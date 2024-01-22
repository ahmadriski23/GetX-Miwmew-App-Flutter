import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';
import '../utils/text_style.dart';

class QSearchButton extends StatelessWidget {
  const QSearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 55,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColors.kGreyShade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.search,
                    color: AppColors.kGreyColor,
                    size: 25,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Search',
                    style: AppText.regulerText
                        .copyWith(fontSize: 14, color: AppColors.kGreyColor),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Container(
          height: 55,
          decoration: BoxDecoration(
              color: AppColors.kPrimaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Icon(
              Icons.filter_alt_outlined,
              color: AppColors.kWhiteColor,
              size: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
