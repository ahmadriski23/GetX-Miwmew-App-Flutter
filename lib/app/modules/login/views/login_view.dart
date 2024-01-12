import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/utils/colors.dart';
import 'package:miwmew_app/app/shared/utils/text_style.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: Get.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/cat-login.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Hi Miew Friends!',
              style: AppText.regulerText.copyWith(
                fontSize: 14,
                color: AppColors.kPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Sign In to Continue',
              style: AppText.boldText.copyWith(
                fontSize: 16,
                color: AppColors.kPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: AppText.regulerText
                      .copyWith(fontSize: 16, color: AppColors.kPrimaryColor),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  height: 55,
                  child: TextFormField(
                    style: AppText.regulerText
                        .copyWith(fontSize: 14, color: AppColors.kGreyColor),
                    decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: AppText.regulerText.copyWith(
                          fontSize: 14,
                          color: AppColors.kGreyColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColors.kPrimaryColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColors.kGreyShade200,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColors.kPrimaryColor,
                          ),
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: AppText.regulerText
                      .copyWith(fontSize: 16, color: AppColors.kPrimaryColor),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  height: 55,
                  child: TextFormField(
                    style: AppText.regulerText
                        .copyWith(fontSize: 14, color: AppColors.kGreyColor),
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: AppColors.kPrimaryColor,
                        ),
                        hintText: 'Enter your password',
                        hintStyle: AppText.regulerText.copyWith(
                          fontSize: 14,
                          color: AppColors.kGreyColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColors.kPrimaryColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColors.kGreyShade200,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColors.kPrimaryColor,
                          ),
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              'Forgot Password?',
              style: AppText.regulerText.copyWith(
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                  color: AppColors.kBlueColor),
            ),
            const SizedBox(
              height: 40.0,
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/bottom-bar');
              },
              child: Container(
                height: 55,
                width: Get.width,
                decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Sign In',
                    style: AppText.boldText
                        .copyWith(fontSize: 16, color: AppColors.kWhiteColor),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don`t have an account?',
                  style: AppText.regulerText.copyWith(
                    fontSize: 14,
                    color: AppColors.kGreyColor,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/register');
                  },
                  child: Text(
                    'Sign Up',
                    style: AppText.boldText
                        .copyWith(fontSize: 14, color: AppColors.kPrimaryColor),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
