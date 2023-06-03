import 'package:bmapa/core/app_export.dart';
import 'package:bmapa/presentation/register_page/models/register_model.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  RegisterController(this.registerModelObj);

  TextEditingController usernameoneController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  Rx<RegisterModel> registerModelObj;

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
