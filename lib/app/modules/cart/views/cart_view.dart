import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/utils/colors.dart';
import 'package:miwmew_app/app/shared/utils/text_style.dart';
import 'package:miwmew_app/app/shared/widgets/back_button.dart';
import 'package:miwmew_app/app/shared/widgets/process_button.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: QBackButton(),
        ),
        centerTitle: true,
        title: Text(
          'My Cart',
          style: AppText.boldText
              .copyWith(fontSize: 16, color: AppColors.kPrimaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 125,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: AppColors.kPrimaryColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(2, 5),
                                blurRadius: 5,
                                color: AppColors.kGreyColor)
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColors.kSecondColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    'assets/images/whiskas1.png',
                                    height: 75,
                                    width: Get.width,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: Get.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 10, 0, 0),
                                                child: Text(
                                                  'Whiskas Can Adult 1+',
                                                  style: AppText.boldText
                                                      .copyWith(
                                                          fontSize: 16,
                                                          color: AppColors
                                                              .kWhiteColor),
                                                ),
                                              ),
                                            ),
                                            Icon(
                                              Icons.delete_outline_outlined,
                                              size: 20,
                                              color: AppColors.kWhiteColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Rp.10.000',
                                            style: AppText.boldText.copyWith(
                                              fontSize: 14,
                                              color: AppColors.kWhiteColor,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 20, 0, 0),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: AppColors
                                                            .kGreyShade200,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              2.0),
                                                      child: Icon(
                                                        Icons.remove,
                                                        color: AppColors
                                                            .kSecondColor,
                                                        size: 20,
                                                      ),
                                                    )),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Text(
                                                  '1',
                                                  style: AppText.boldText
                                                      .copyWith(
                                                          fontSize: 14,
                                                          color: AppColors
                                                              .kWhiteColor),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: AppColors
                                                            .kGreyShade200,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              2.0),
                                                      child: Icon(
                                                        Icons.add,
                                                        color: AppColors
                                                            .kSecondColor,
                                                        size: 20,
                                                      ),
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // * TOTAL
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Total : 4',
                style: AppText.regulerText
                    .copyWith(fontSize: 16, color: AppColors.kBlackColor),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            // * SUBTOTAL
            Container(
              height: 75,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(-2, 5),
                      blurRadius: 10,
                      color: AppColors.kGreyColor),
                ],
                color: AppColors.kWhiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      'Subtotal: ',
                      style: AppText.regulerText
                          .copyWith(fontSize: 16, color: AppColors.kBlackColor),
                    ),
                    Text(
                      'Rp.25.000',
                      style: AppText.regulerText.copyWith(
                        fontSize: 16,
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: QProcessButton(onTap: () {}, title: 'Check Out'),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
