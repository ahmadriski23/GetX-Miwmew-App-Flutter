import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miwmew_app/app/services/auth_service.dart';
import 'package:miwmew_app/app/shared/utils/colors.dart';
import 'package:quickalert/quickalert.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController
  final count = 0.obs;
  Rx<DateTime> selectedDate = DateTime.now().obs;
  RxString? formattedDate = ''.obs;
  String? name;
  String? email;
  String? password;
  String? image;
  String? dateOfBirth;
  RxBool isLoading = false.obs;
  RxBool showPassword = false.obs;
  RxBool isRegisterIn = false.obs;
  final isEmailValid = false.obs;

  // * valid email
  bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(email);
  }

  // * qualified email
  bool isEmailQualified() {
    // * ubah syarat domain
    final allowedDomains = ['gmail.com', 'yahoo.com'];
    if (email != null && email!.isNotEmpty) {
      final emailParts = email!.split('@');
      if (emailParts.length == 2) {
        final domain = emailParts[1];
        return allowedDomains.contains(domain);
      }
    }
    return false;
  }

  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  // * show password
  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
  }

  // * register
  doRegister() async {
    if (isRegisterIn.value) {
      return;
    }
    bool isValid = registerFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }

    isLoading.value = true;
    isEmailQualified();
    bool isSuccess = await AuthService().register(
      name: name!,
      email: email!,
      password: password!,
      image: image!,
      dateOfBirth: dateOfBirth!,
    );
    isLoading.value = false;
    isRegisterIn.value = false;

    // * check email qualified * already exists
    if (!isEmailQualified() || !isSuccess) {
      QuickAlert.show(
          context: Get.context!,
          type: QuickAlertType.warning,
          title: 'Ooopss!!',
          text: 'Your email is not qualified or already exists!',
          confirmBtnColor: AppColors.kSecondColor);
      return;
    }
    Get.offNamed('/bottom-bar');
    Get.snackbar(
      'Yeeeyyy!!',
      'Success Register',
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 5),
      animationDuration: const Duration(seconds: 1),
    );
  }

  // * date of birth
  Future<void> selectDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
        initialDate: selectedDate.value);

    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
      dateOfBirth = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      formattedDate!.value =
          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      update(['dateOfBirth']);
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
