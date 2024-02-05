import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/utils/text_style.dart';
import 'package:miwmew_app/app/shared/widgets/profile_card.dart';
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
              const QProfileCard(),
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
                height: 20.0,
              ),
              FutureBuilder(
                  future: controller.categoryService.getCategory(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: AppColors.kPrimaryColor,
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return const Text('Error Fetching Data');
                    }
                    return controller.categoryService.categories.isEmpty
                        ? const Text('Sorry, Category Not Found')
                        : SizedBox(
                            height: 100,
                            child: Obx(
                              () => ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: controller
                                      .categoryService.categories.length,
                                  itemBuilder: (context, index) {
                                    return Obx(
                                      () => Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 20, 0),
                                        child: InkWell(
                                          onTap: () {
                                            controller.selectedCategoryIndex
                                                .value = index;
                                          },
                                          child: Container(
                                            height: 100,
                                            width: 85,
                                            decoration: BoxDecoration(
                                              color: controller
                                                          .selectedCategoryIndex
                                                          .value ==
                                                      index
                                                  ? AppColors.kPrimaryColor
                                                  : AppColors.kGreyShade200,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Column(
                                                children: [
                                                  Image.network(
                                                    controller
                                                        .categoryService
                                                        .categories[index]
                                                        .image,
                                                    height: 50,
                                                    width: 50,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  Text(
                                                    controller.categoryService
                                                        .categories[index].name,
                                                    style: AppText.regulerText
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color: controller
                                                                        .selectedCategoryIndex
                                                                        .value ==
                                                                    index
                                                                ? AppColors
                                                                    .kWhiteColor
                                                                : AppColors
                                                                    .kBlackColor),
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
                          );
                  }),
              const SizedBox(
                height: 20.0,
              ),
              FutureBuilder(
                  future: controller.categoryService.getCategory(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: AppColors.kPrimaryColor,
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return const Text('Error Fetching Data');
                    }
                    return Obx(() {
                      return SizedBox(
                        height: 500,
                        child: ListView.builder(
                          itemCount: controller.selectedCategoryIndex.value >=
                                      0 &&
                                  controller.selectedCategoryIndex.value <
                                      controller
                                          .categoryService.categories.length
                              ? controller
                                  .categoryService
                                  .categories[
                                      controller.selectedCategoryIndex.value]
                                  .products
                                  .length
                              : 0,
                          itemBuilder: (context, index) {
                            var product = controller
                                .categoryService
                                .categories[
                                    controller.selectedCategoryIndex.value]
                                .products[index];
                            return SizedBox(
                                height: 250,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 25, 0, 0),
                                      child: Container(
                                        height: 150,
                                        width: Get.width,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: AppColors.kGreyColor,
                                                offset: const Offset(2, 6),
                                                blurRadius: 12)
                                          ],
                                          color: AppColors.kPrimaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                                      product.name,
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
                                                      product.description,
                                                      style: AppText.regulerText
                                                          .copyWith(
                                                        fontSize: 14,
                                                        color: AppColors
                                                            .kWhiteColor,
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
                                      padding: const EdgeInsets.fromLTRB(
                                          300, 0, 0, 0),
                                      child: Hero(
                                        tag: 'cat_image_$index',
                                        child: Image.network(
                                          product.image,
                                          height: 200,
                                          width: Get.width,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 155, 20, 0),
                                      child: InkWell(
                                        onTap: () {
                                          Get.toNamed('detail-category',
                                              arguments: {
                                                'tagHero': 'cat_image_$index'
                                              });
                                        },
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
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'See More',
                                              style: AppText.boldText.copyWith(
                                                  fontSize: 14,
                                                  color:
                                                      AppColors.kPrimaryColor),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ));
                          },
                        ),
                      );
                    });
                  }),
            ],
          ),
        ),
      )),
    );
  }
}
