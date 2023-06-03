import 'package:bmapa/core/app_export.dart';
import 'package:bmapa/presentation/login_tab_container_screen/models/login_tab_container_model.dart';
import 'package:flutter/material.dart';

class LoginTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<LoginTabContainerModel> loginTabContainerModelObj =
      LoginTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
