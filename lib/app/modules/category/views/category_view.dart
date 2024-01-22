import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:miwmew_app/app/shared/widgets/profile_card.dart';
import 'package:miwmew_app/app/shared/widgets/search_button.dart';
import '../../../shared/utils/colors.dart';
import '../../../shared/utils/text_style.dart';
import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);
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
                  height: 30.0,
                ),
                Text(
                  'Categories',
                  style: AppText.boldText
                      .copyWith(fontSize: 16, color: AppColors.kPrimaryColor),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Let`s take a look at our category !',
                  style: AppText.regulerText
                      .copyWith(fontSize: 14, color: AppColors.kGreyColor),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const QSearchButton(),
                const SizedBox(
                  height: 40.0,
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Container(
                              height: 125,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: AppColors.kGreyShade200,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      IconlyBold.category,
                                      size: 20,
                                      color: AppColors.kWhiteColor,
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      child: Text(
                                        'Medicare',
                                        style: AppText.boldText.copyWith(
                                          fontSize: 14,
                                          color: AppColors.kPrimaryColor,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      child: Text(
                                        '10 Cats',
                                        style: AppText.regulerText.copyWith(
                                            fontSize: 12,
                                            color: AppColors.kGreyColor),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(275, 0, 0, 0),
                            child: Image.asset(
                              'assets/images/cat1.png',
                              height: 150,
                              width: Get.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
