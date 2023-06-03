import 'package:bmapa/core/app_export.dart';
import 'package:bmapa/presentation/login_page/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  LoginController(this.loginModelObj);

  TextEditingController usernameoneController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  Rx<LoginModel> loginModelObj;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    usernameoneController.dispose();
    passwordoneController.dispose();
  }
}
