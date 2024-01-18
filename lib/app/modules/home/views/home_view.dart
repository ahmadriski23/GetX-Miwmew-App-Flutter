import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/utils/text_style.dart';

import '../../../shared/utils/colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 65,
                width: Get.width,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(2, 2),
                          color: AppColors.kGreyColor,
                          blurRadius: 15)
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
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: AppColors.kWhiteColor,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Hi Miwmew Friends !',
                style: AppText.boldText
                    .copyWith(fontSize: 16, color: AppColors.kPrimaryColor),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'What are you looking for?',
                style: AppText.regulerText
                    .copyWith(fontSize: 14, color: AppColors.kGreyColor),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
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
                              color: AppColors.kBlackColor,
                              size: 25,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Search',
                              style: AppText.regulerText.copyWith(
                                  fontSize: 14, color: AppColors.kBlackColor),
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
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Category',
                style: AppText.boldText.copyWith(
                  fontSize: 16,
                  color: AppColors.kPrimaryColor,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    itemCount: controller.category.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Obx(
                        () => GestureDetector(
                          onTap: () {
                            controller
                                .changeCategory(controller.category[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Container(
                              height: 100,
                              width: 85,
                              decoration: BoxDecoration(
                                color: controller.selectedCategory.value.name ==
                                        controller.category[index].name
                                    ? AppColors.kPrimaryColor
                                    : AppColors.kGreyColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      controller.category[index].image,
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      controller.category[index].name,
                                      style: AppText.regulerText.copyWith(
                                        fontSize: 12,
                                        color: AppColors.kWhiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Obx(() {
                switch (controller.selectedCategory.value.name) {
                  case "Cats":
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return SizedBox(
                              height: 250,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 25, 0, 0),
                                    child: Container(
                                      height: 150,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        color: AppColors.kPrimaryColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: Get.width / 2,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Browny',
                                                    style: AppText.boldText
                                                        .copyWith(
                                                            fontSize: 16,
                                                            color: AppColors
                                                                .kWhiteColor),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  Text(
                                                    'Browny is lorem ipsum dot sit amet lorem ipsum sit dot amet',
                                                    style: AppText.regulerText
                                                        .copyWith(
                                                      fontSize: 14,
                                                      color:
                                                          AppColors.kWhiteColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(300, 0, 0, 0),
                                    child: Image.asset(
                                      'assets/images/cat1.png',
                                      height: 200,
                                      width: Get.width,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 155, 20, 0),
                                    child: Container(
                                      height: 35,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(2, 2),
                                            color: AppColors.kGreyColor,
                                            blurRadius: 10,
                                          )
                                        ],
                                        color: AppColors.kWhiteColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'See More',
                                          style: AppText.boldText.copyWith(
                                              fontSize: 14,
                                              color: AppColors.kPrimaryColor),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ));
                        });
                  case "Grooming":
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return SizedBox(
                              height: 250,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 25, 0, 0),
                                    child: Container(
                                      height: 150,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        color: AppColors.kPrimaryColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: Get.width / 2,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Browny',
                                                    style: AppText.boldText
                                                        .copyWith(
                                                            fontSize: 16,
                                                            color: AppColors
                                                                .kWhiteColor),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  Text(
                                                    'Browny is lorem ipsum dot sit amet lorem ipsum sit dot amet',
                                                    style: AppText.regulerText
                                                        .copyWith(
                                                      fontSize: 14,
                                                      color:
                                                          AppColors.kWhiteColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(300, 0, 0, 0),
                                    child: Image.asset(
                                      'assets/images/cat1.png',
                                      height: 200,
                                      width: Get.width,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 155, 20, 0),
                                    child: Container(
                                      height: 35,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(2, 2),
                                            color: AppColors.kGreyColor,
                                            blurRadius: 10,
                                          )
                                        ],
                                        color: AppColors.kWhiteColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'See More',
                                          style: AppText.boldText.copyWith(
                                              fontSize: 14,
                                              color: AppColors.kPrimaryColor),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ));
                        });
                  case "Medicare":
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return SizedBox(
                              height: 250,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 25, 0, 0),
                                    child: Container(
                                      height: 150,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        color: AppColors.kPrimaryColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: Get.width / 2,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Browny',
                                                    style: AppText.boldText
                                                        .copyWith(
                                                            fontSize: 16,
                                                            color: AppColors
                                                                .kWhiteColor),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  Text(
                                                    'Browny is lorem ipsum dot sit amet lorem ipsum sit dot amet',
                                                    style: AppText.regulerText
                                                        .copyWith(
                                                      fontSize: 14,
                                                      color:
                                                          AppColors.kWhiteColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(300, 0, 0, 0),
                                    child: Image.asset(
                                      'assets/images/cat1.png',
                                      height: 200,
                                      width: Get.width,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 155, 20, 0),
                                    child: Container(
                                      height: 35,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(2, 2),
                                            color: AppColors.kGreyColor,
                                            blurRadius: 10,
                                          )
                                        ],
                                        color: AppColors.kWhiteColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'See More',
                                          style: AppText.boldText.copyWith(
                                              fontSize: 14,
                                              color: AppColors.kPrimaryColor),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ));
                        });
                  case "Daycare":
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return SizedBox(
                              height: 250,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 25, 0, 0),
                                    child: Container(
                                      height: 150,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        color: AppColors.kPrimaryColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: Get.width / 2,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Browny',
                                                    style: AppText.boldText
                                                        .copyWith(
                                                            fontSize: 16,
                                                            color: AppColors
                                                                .kWhiteColor),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  Text(
                                                    'Browny is lorem ipsum dot sit amet lorem ipsum sit dot amet',
                                                    style: AppText.regulerText
                                                        .copyWith(
                                                      fontSize: 14,
                                                      color:
                                                          AppColors.kWhiteColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(300, 0, 0, 0),
                                    child: Image.asset(
                                      'assets/images/cat1.png',
                                      height: 200,
                                      width: Get.width,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 155, 20, 0),
                                    child: Container(
                                      height: 35,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(2, 2),
                                            color: AppColors.kGreyColor,
                                            blurRadius: 10,
                                          )
                                        ],
                                        color: AppColors.kWhiteColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'See More',
                                          style: AppText.boldText.copyWith(
                                              fontSize: 14,
                                              color: AppColors.kPrimaryColor),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ));
                        });
                  default:
                    return Container();
                }
              })
            ],
          ),
        ),
      )),
    );
  }
}
