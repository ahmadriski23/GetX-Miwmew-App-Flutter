import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/utils/colors.dart';
import 'package:miwmew_app/app/shared/utils/text_style.dart';
import 'package:miwmew_app/app/shared/widgets/back_button.dart';
import 'package:miwmew_app/app/shared/widgets/process_button.dart';
import '../controllers/detail_product_controller.dart';

class DetailProductView extends GetView<DetailProductController> {
  const DetailProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: controller.supplyService.getSupplyById(controller.id),
            builder: (context, snapshot) {
              return ListView.builder(
                  itemCount: controller.supplyService.supplies.length,
                  itemBuilder: (context, index) {
                    var supply = controller.supplyService.supplies[index];
                    return Stack(
                      children: [
                        Container(
                          height: Get.height,
                          width: Get.width,
                          color: AppColors.kSecondColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 375, 0, 0),
                          child: Container(
                            height: Get.height,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: AppColors.kWhiteColor,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 75, 20, 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        supply.name,
                                        style: AppText.boldText.copyWith(
                                          fontSize: 20,
                                          color: AppColors.kSecondColor,
                                        ),
                                      ),
                                      const Spacer(),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 20,
                                            color: AppColors.kYellowColor,
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            '(4)',
                                            style: AppText.regulerText.copyWith(
                                                fontSize: 14,
                                                color: AppColors.kGreyColor),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 25.0,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      AppColors.kGreyShade200,
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Icon(
                                                  Icons.remove,
                                                  color: AppColors.kSecondColor,
                                                  size: 25,
                                                ),
                                              )),
                                          const SizedBox(
                                            width: 20.0,
                                          ),
                                          Text(
                                            '1',
                                            style: AppText.regulerText.copyWith(
                                                fontSize: 18,
                                                color: AppColors.kSecondColor),
                                          ),
                                          const SizedBox(
                                            width: 20.0,
                                          ),
                                          Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      AppColors.kGreyShade200,
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Icon(
                                                  Icons.add,
                                                  color: AppColors.kSecondColor,
                                                  size: 25,
                                                ),
                                              )),
                                        ],
                                      ),
                                      const Spacer(),
                                      Text(
                                        "Rp. ${supply.price}",
                                        style: AppText.boldText.copyWith(
                                            fontSize: 16,
                                            color: AppColors.kSecondColor),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 35.0,
                                  ),
                                  Text(
                                    'Product Description',
                                    style: AppText.boldText.copyWith(
                                        fontSize: 16,
                                        color: AppColors.kGreyColor),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    supply.description,
                                    style: AppText.regulerText.copyWith(
                                        fontSize: 14,
                                        color: AppColors.kGreyColor),
                                  ),
                                  const Spacer(),
                                  QProcessButton(
                                      onTap: () {}, title: 'Add To Cart')
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(250, 100, 0, 0),
                          child: Hero(
                            tag: controller.tagHero!,
                            child: Image.network(
                              supply.image,
                              height: 350,
                              width: Get.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Obx(
                          () => Padding(
                            padding: const EdgeInsets.fromLTRB(20, 350, 0, 0),
                            child: InkWell(
                              onTap: () => controller.isFavoriteToggle(),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColors.kGreyColor,
                                        blurRadius: 5,
                                        offset: const Offset(1, 5))
                                  ],
                                  color: controller.isFavorite.value
                                      ? AppColors.kPrimaryColor
                                      : AppColors.kWhiteColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: controller.isFavorite.value
                                      ? AppColors.kWhiteColor
                                      : AppColors.kPrimaryColor,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                          child: QBackButton(),
                        ),
                      ],
                    );
                  });
            }));
  }
}
