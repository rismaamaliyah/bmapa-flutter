import 'controller/kuy_controller.dart';
import 'package:bmapa/core/app_export.dart';
import 'package:bmapa/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class KuyScreen extends GetWidget<KuyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.red400,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getVerticalSize(
                    369,
                  ),
                  width: getHorizontalSize(
                    324,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: getHorizontalSize(
                            290,
                          ),
                          child: Text(
                            "msg_bingung_mau_makan".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold48,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgWiredoutline21avatar,
                        height: getVerticalSize(
                          275,
                        ),
                        width: getHorizontalSize(
                          250,
                        ),
                        alignment: Alignment.bottomRight,
                      ),
                    ],
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  42,
                ),
                width: getHorizontalSize(
                  202,
                ),
                text: "lbl_kuy".tr,
                margin: getMargin(
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
