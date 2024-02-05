import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miwmew_app/app/shared/widgets/image_picker.dart';
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
          child: SingleChildScrollView(
        child: Form(
          key: controller.registerFormKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                  QImagePicker(
                      value: controller.image,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter image';
                        }
                        return null;
                      },
                      label: "Profile Photo",
                      onChanged: (value) {
                        controller.image = value;
                      }),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: AppText.regulerText.copyWith(
                            fontSize: 16, color: AppColors.kPrimaryColor),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          controller.name = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                        style: AppText.regulerText.copyWith(
                            fontSize: 14, color: AppColors.kGreyColor),
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
                        style: AppText.regulerText.copyWith(
                            fontSize: 16, color: AppColors.kPrimaryColor),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          controller.email = value;
                          final isEmailValid = controller.isValidEmail(value);
                          controller.isEmailValid.value = isEmailValid;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        style: AppText.regulerText.copyWith(
                            fontSize: 14, color: AppColors.kGreyColor),
                        decoration: InputDecoration(
                            suffixIcon: controller.isEmailValid.value
                                ? Icon(
                                    Icons.check_circle,
                                    color: AppColors.kGreenColor,
                                  )
                                : Icon(
                                    Icons.cancel,
                                    color: AppColors.kRedColor,
                                  ),
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
                        style: AppText.regulerText.copyWith(
                            fontSize: 16, color: AppColors.kPrimaryColor),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          controller.password = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        obscureText: !controller.showPassword.value,
                        style: AppText.regulerText.copyWith(
                            fontSize: 14, color: AppColors.kGreyColor),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: AppColors.kPrimaryColor,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.toggleShowPassword();
                              },
                              icon: controller.showPassword.value
                                  ? Icon(
                                      Icons.visibility,
                                      color: AppColors.kBlueColor,
                                    )
                                  : Icon(
                                      Icons.visibility_off,
                                      color: AppColors.kGreyColor,
                                    ),
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
                        style: AppText.regulerText.copyWith(
                            fontSize: 16, color: AppColors.kPrimaryColor),
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
                                  Obx(
                                    () => Text(
                                      controller.formattedDate?.isEmpty ?? true
                                          ? 'Select Date'
                                          : '${controller.formattedDate}',
                                      style: AppText.regulerText.copyWith(
                                        fontSize: 14,
                                        color: AppColors.kGreyColor,
                                      ),
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
                  controller.isLoading.value
                      ? Center(
                          child: CircularProgressIndicator(
                            color: AppColors.kPrimaryColor,
                          ),
                        )
                      : QProcessButton(
                          onTap: () {
                            controller.doRegister();
                          },
                          title: 'Sign Up'),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: AppText.regulerText.copyWith(
                            fontSize: 14, color: AppColors.kGreyColor),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      InkWell(
                        onTap: () => Get.toNamed('login'),
                        child: Text(
                          'Sign In',
                          style: AppText.boldText.copyWith(
                              fontSize: 14, color: AppColors.kPrimaryColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
