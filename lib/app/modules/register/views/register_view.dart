import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/widgets/process_button.dart';
import '../../../shared/utils/colors.dart';
import '../../../shared/utils/text_style.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Hi Miwmew Friends!',
                      style: AppText.regulerText.copyWith(
                          fontSize: 14, color: AppColors.kPrimaryColor),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Sign Up',
                      style: AppText.boldText.copyWith(
                          fontSize: 16, color: AppColors.kPrimaryColor),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'To Continue',
                      style: AppText.boldText.copyWith(
                          fontSize: 16, color: AppColors.kPrimaryColor),
                    )
                  ],
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/cat4.png',
                    fit: BoxFit.cover,
                    height: 150,
                    width: Get.width,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
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
                        hintText: 'Enter your name',
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
                        suffix: Icon(
                          Icons.remove_red_eye_outlined,
                          color: AppColors.kBlueColor,
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
              height: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Date of Birth',
                  style: AppText.regulerText
                      .copyWith(fontSize: 16, color: AppColors.kPrimaryColor),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                InkWell(
                  onTap: () async {
                    controller.selectDate();
                  },
                  child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.kGreyShade200, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          children: [
                            Text(
                              '28/05/2023',
                              style: AppText.regulerText.copyWith(
                                fontSize: 14,
                                color: AppColors.kGreyColor,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: AppColors.kGreyColor,
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            QProcessButton(onTap: () {}, title: 'Sign Up'),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: AppText.regulerText
                      .copyWith(fontSize: 14, color: AppColors.kGreyColor),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                InkWell(
                  onTap: () => Get.toNamed('login'),
                  child: Text(
                    'Sign In',
                    style: AppText.boldText
                        .copyWith(fontSize: 14, color: AppColors.kPrimaryColor),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
