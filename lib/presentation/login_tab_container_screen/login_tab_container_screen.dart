import 'controller/login_tab_container_controller.dart';
import 'package:bmapa/core/app_export.dart';
import 'package:bmapa/presentation/login_page/login_page.dart';
import 'package:bmapa/presentation/register_page/register_page.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginTabContainerScreen extends GetWidget<LoginTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.red400,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 15,
                    right: 15,
                  ),
                  decoration: AppDecoration.fillGray100.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL50,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 88,
                          top: 53,
                        ),
                        child: Text(
                          "msg_welcome_to_bm_apa".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14,
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          51,
                        ),
                        width: getHorizontalSize(
                          275,
                        ),
                        margin: getMargin(
                          left: 20,
                          top: 20,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.blueGray900,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              25,
                            ),
                          ),
                        ),
                        child: TabBar(
                          controller: controller.tabviewController,
                          labelColor: ColorConstant.whiteA700,
                          labelStyle: TextStyle(
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                          unselectedLabelColor: ColorConstant.whiteA700,
                          unselectedLabelStyle: TextStyle(
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                          indicatorPadding: getPadding(
                            all: 8.0,
                          ),
                          indicator: BoxDecoration(
                            color: ColorConstant.gray700,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                17,
                              ),
                            ),
                          ),
                          tabs: [
                            Tab(
                              child: Text(
                                "lbl_login".tr,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Tab(
                              child: Text(
                                "lbl_register".tr,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          493,
                        ),
                        child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            LoginPage(),
                            RegisterPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
