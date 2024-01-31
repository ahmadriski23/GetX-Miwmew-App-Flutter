import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/utils/colors.dart';
import 'package:miwmew_app/app/shared/utils/text_style.dart';
import 'package:miwmew_app/app/shared/widgets/back_button.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: QBackButton(),
          ),
          title: Text(
            'Profile',
            style: AppText.regulerText
                .copyWith(fontSize: 18, color: AppColors.kPrimaryColor),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello !',
                        style: AppText.regulerText.copyWith(
                          fontSize: 16,
                          color: AppColors.kGreyColor,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Ahmad Riski',
                        style: AppText.regulerText.copyWith(
                          fontSize: 18,
                          color: AppColors.kPrimaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'ahmadriski.work@gmail.com',
                        style: AppText.regulerText.copyWith(
                          fontSize: 14,
                          color: AppColors.kGreyColor,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '+62 896 5936 6024',
                        style: AppText.regulerText.copyWith(
                          fontSize: 14,
                          color: AppColors.kGreyColor,
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: AppColors.kPrimaryColor,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Edit Profile',
                            style: AppText.regulerText.copyWith(
                              fontSize: 14,
                              color: AppColors.kPrimaryColor,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.kPrimaryColor,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Address',
                            style: AppText.regulerText.copyWith(
                              fontSize: 14,
                              color: AppColors.kPrimaryColor,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.credit_card,
                            color: AppColors.kPrimaryColor,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Cards',
                            style: AppText.regulerText.copyWith(
                              fontSize: 14,
                              color: AppColors.kPrimaryColor,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.history,
                            color: AppColors.kPrimaryColor,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Order History',
                            style: AppText.regulerText.copyWith(
                              fontSize: 14,
                              color: AppColors.kPrimaryColor,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: AppColors.kPrimaryColor,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Setting',
                            style: AppText.regulerText.copyWith(
                              fontSize: 14,
                              color: AppColors.kPrimaryColor,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.kPrimaryColor,
                          ),
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: AppColors.kGreyShade200),
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Container(
                              height: 125,
                              width: 125,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.kGreyColor,
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/cat1.png'))),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 75,
              decoration: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  'Invite Your Mew Friends !',
                  style: AppText.boldText
                      .copyWith(fontSize: 18, color: AppColors.kWhiteColor),
                ),
              ),
            ),
          ],
        ));
  }
}
