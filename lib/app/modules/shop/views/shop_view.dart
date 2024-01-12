import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                                    style: AppText.boldText.copyWith(
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
                          return Container(
                            height: 300,
                            width: 175,
                            decoration: BoxDecoration(
                              color: AppColors.kSecondColor,
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