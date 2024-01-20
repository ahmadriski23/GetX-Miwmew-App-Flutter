import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/utils/colors.dart';
import 'package:miwmew_app/app/shared/utils/text_style.dart';
import 'package:miwmew_app/app/shared/widgets/back_button.dart';

import '../controllers/detail_category_controller.dart';

class DetailCategoryView extends GetView<DetailCategoryController> {
  const DetailCategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Hero(
                  tag: controller.tagHero!,
                  child: Container(
                    width: Get.width,
                    height: Get.height / 2.5,
                    decoration: BoxDecoration(
                      color: AppColors.kGreyShade100,
                      image: const DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/cat1.png'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 350, 0, 0),
                  child: Container(
                    height: Get.height,
                    width: Get.width,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.kGreyColor,
                            blurRadius: 15,
                            offset: const Offset(0, 5))
                      ],
                      color: AppColors.kWhiteColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(200, 0, 200, 0),
                            child: Container(
                              height: 5,
                              width: Get.width,
                              decoration: BoxDecoration(
                                  color: AppColors.kGreyShade200,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Text(
                                'Chloe',
                                style: AppText.boldText.copyWith(
                                    fontSize: 20,
                                    color: AppColors.kPrimaryColor),
                              ),
                              Icon(
                                Icons.female,
                                color: AppColors.kPrimaryColor,
                                size: 25,
                              ),
                              const Spacer(),
                              Text('Rp. 150.000',
                                  style: AppText.boldText.copyWith(
                                      fontSize: 15,
                                      color: AppColors.kBlackColor))
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Persian Himalaya Longhair',
                              style: AppText.regulerText.copyWith(
                                  fontSize: 15, color: AppColors.kGreyColor),
                            ),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: AppColors.kPrimaryColor,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.calendar_month_rounded,
                                            color: AppColors.kWhiteColor,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        'DOB',
                                        style: AppText.boldText.copyWith(
                                            fontSize: 16,
                                            color: AppColors.kPrimaryColor),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '28 November 2021',
                                    style: AppText.regulerText
                                        .copyWith(fontSize: 14),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 40.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: AppColors.kPrimaryColor,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.monitor_weight_outlined,
                                            color: AppColors.kWhiteColor,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        'Weight',
                                        style: AppText.boldText.copyWith(
                                            fontSize: 16,
                                            color: AppColors.kPrimaryColor),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '1 KG',
                                    style: AppText.regulerText
                                        .copyWith(fontSize: 14),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Pontianak, Indonesia',
                                style:
                                    AppText.regulerText.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                            style: AppText.regulerText.copyWith(
                                fontSize: 14, color: AppColors.kGreyColor),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Container(
                            height: 50,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: AppColors.kPrimaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Adopt Now',
                                style: AppText.boldText.copyWith(
                                    fontSize: 16, color: AppColors.kWhiteColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 40, 20, 20),
                  child: backButton(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
