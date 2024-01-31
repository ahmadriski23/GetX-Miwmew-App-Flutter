import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miwmew_app/app/services/auth_service.dart';
import 'package:quickalert/quickalert.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  String? email;
  String? password;
  RxBool rememberMe = false.obs;
  RxBool showPassword = false.obs;
  RxBool isLoading = false.obs;
  RxBool isLoggingIn = false.obs;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  // * remember me
  void toggleRememberMe() {
    rememberMe.value = !rememberMe.value;
  }

  // * show password
  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
  }

  // * login
  doLogin() async {
    if (isLoggingIn.value) {
      return;
    }
    bool isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    isLoggingIn.value = true;
    isLoading.value = true;

    bool isSuccess = await AuthService().login(
        email: email!, password: password!, rememberMe: rememberMe.value);
    isLoading.value = false;
    isLoggingIn.value = false;

    if (!isSuccess) {
      QuickAlert.show(
        context: Get.context!,
        title: "Oopsss!!",
        text: "Your email or password wrong",
        type: QuickAlertType.warning,
      );
      return;
    }
    // * login user
    Get.offNamed('/bottom-bar');
    Get.snackbar("Yeyy!!", "Login successfully");
  }

  // * auto login
  void autoLogin() async {
    bool isAutoLogin = await AuthService().autoLogin();
    if (isAutoLogin) {
      Get.offNamed('/bottom-bar');
    }
  }

  final count = 0.obs;
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
