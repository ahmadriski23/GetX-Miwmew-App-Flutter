import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/widgets/profile_card.dart';
import 'package:miwmew_app/app/shared/widgets/search_button.dart';
import '../../../shared/utils/colors.dart';
import '../../../shared/utils/text_style.dart';
import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  const ShopView({Key? key}) : super(key: key);
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
                'Our Product',
                style: AppText.boldText
                    .copyWith(fontSize: 16, color: AppColors.kPrimaryColor),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Perfect Choice for you cat!',
                style: AppText.regulerText
                    .copyWith(fontSize: 14, color: AppColors.kGreyColor),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const QSearchButton(),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.products.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      String product = controller.products[index];
                      return Obx(
                        () => GestureDetector(
                          onTap: () {
                            controller.changeProduct(product);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                color:
                                    controller.selectedProduct.value == product
                                        ? AppColors.kPrimaryColor
                                        : AppColors.kGreyShade200,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Center(
                                  child: Text(
                                    product,
                                    style: AppText.regulerText.copyWith(
                                      fontSize: 14,
                                      color: controller.selectedProduct.value ==
                                              product
                                          ? AppColors.kWhiteColor
                                          : AppColors.kGreyColor,
                                    ),
                                  ),
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
                switch (controller.selectedProduct.value) {
                  case "Food":
                    return GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 16 / 18.8,
                                crossAxisCount: 2,
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () =>
                                Get.toNamed('/detail-product', arguments: {
                              'tagHero': 'product_image_$index',
                            }),
                            child: Container(
                              height: 300,
                              width: 175,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 81, 156, 217),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 15, 20, 15),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Container(
                                        height: 150,
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 145, 202, 248),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Hero(
                                            tag: 'product_image_$index',
                                            child: Image.asset(
                                              'assets/images/whiskas1.png',
                                              height: 75,
                                              width: Get.width,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Text(
                                      'Whiskas Can Adult 1+ Tuna',
                                      style: AppText.boldText.copyWith(
                                        fontSize: 12,
                                        color: AppColors.kWhiteColor,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            child: Text(
                                              'Rp.10.000',
                                              style: AppText.boldText.copyWith(
                                                  fontSize: 14,
                                                  color: AppColors.kWhiteColor),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 10, 0, 0),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: AppColors.kWhiteColor,
                                                  size: 15,
                                                ),
                                                const SizedBox(
                                                  width: 5.0,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: AppColors.kWhiteColor,
                                                  size: 15,
                                                ),
                                                const SizedBox(
                                                  width: 5.0,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: AppColors.kWhiteColor,
                                                  size: 15,
                                                ),
                                                const SizedBox(
                                                  width: 5.0,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: AppColors.kWhiteColor,
                                                  size: 15,
                                                ),
                                                const SizedBox(
                                                  width: 5.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 40, 0, 0),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10)),
                                            color: AppColors.kPrimaryColor,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.shopping_bag_outlined,
                                              color: AppColors.kWhiteColor,
                                              size: 25,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  case "Toy":
                    return GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 16 / 18.8,
                                crossAxisCount: 2,
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 300,
                            width: 175,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 81, 156, 217),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 15, 20, 15),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Container(
                                      height: 150,
                                      decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 145, 202, 248),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Image.asset(
                                          'assets/images/whiskas1.png',
                                          height: 75,
                                          width: Get.width,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Text(
                                    'Whiskas Can Adult 1+ Tuna',
                                    style: AppText.boldText.copyWith(
                                      fontSize: 12,
                                      color: AppColors.kWhiteColor,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 10, 0),
                                          child: Text(
                                            'Rp.10.000',
                                            style: AppText.boldText.copyWith(
                                                fontSize: 14,
                                                color: AppColors.kWhiteColor),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 10, 0, 0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: AppColors.kWhiteColor,
                                                size: 15,
                                              ),
                                              const SizedBox(
                                                width: 5.0,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: AppColors.kWhiteColor,
                                                size: 15,
                                              ),
                                              const SizedBox(
                                                width: 5.0,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: AppColors.kWhiteColor,
                                                size: 15,
                                              ),
                                              const SizedBox(
                                                width: 5.0,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: AppColors.kWhiteColor,
                                                size: 15,
                                              ),
                                              const SizedBox(
                                                width: 5.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 40, 0, 0),
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10)),
                                          color: AppColors.kPrimaryColor,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.shopping_bag_outlined,
                                            color: AppColors.kWhiteColor,
                                            size: 25,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        });

                  case "Shampoo":
                    return Container(
                      height: 300,
                      width: 175,
                      decoration: BoxDecoration(
                        color: AppColors.kSecondColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  color: AppColors.kPrimaryColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Image.asset(
                                    'assets/images/whiskas1.png',
                                    height: 75,
                                    width: Get.width,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Text(
                              'Whiskas Can Adult 1+ Tuna',
                              style: AppText.boldText.copyWith(
                                fontSize: 12,
                                color: AppColors.kWhiteColor,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Text(
                                      'Rp.10.000',
                                      style: AppText.boldText.copyWith(
                                          fontSize: 14,
                                          color: AppColors.kWhiteColor),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: AppColors.kWhiteColor,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: AppColors.kWhiteColor,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: AppColors.kWhiteColor,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: AppColors.kWhiteColor,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color: AppColors.kPrimaryColor,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      color: AppColors.kWhiteColor,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  case "Cage":
                    return Container(
                      height: 300,
                      width: 175,
                      decoration: BoxDecoration(
                        color: AppColors.kSecondColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  color: AppColors.kPrimaryColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Image.asset(
                                    'assets/images/whiskas1.png',
                                    height: 75,
                                    width: Get.width,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Text(
                              'Whiskas Can Adult 1+ Tuna',
                              style: AppText.boldText.copyWith(
                                fontSize: 12,
                                color: AppColors.kWhiteColor,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Text(
                                      'Rp.10.000',
                                      style: AppText.boldText.copyWith(
                                          fontSize: 14,
                                          color: AppColors.kWhiteColor),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: AppColors.kWhiteColor,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: AppColors.kWhiteColor,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: AppColors.kWhiteColor,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: AppColors.kWhiteColor,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color: AppColors.kPrimaryColor,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      color: AppColors.kWhiteColor,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
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
