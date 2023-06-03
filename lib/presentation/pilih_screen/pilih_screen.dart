import 'controller/pilih_controller.dart';
import 'package:bmapa/core/app_export.dart';
import 'package:bmapa/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PilihScreen extends GetWidget<PilihController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.red400,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 23,
            right: 23,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: getHorizontalSize(
                  245,
                ),
                margin: getMargin(
                  left: 1,
                  right: 67,
                ),
                child: Text(
                  "lbl_sini_dibantuin".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold48,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 5,
                ),
                child: Text(
                  "lbl_yuk_pilih".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold20,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 43,
                  right: 1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        height: getVerticalSize(
                          40,
                        ),
                        text: "lbl_pedas".tr,
                        margin: getMargin(
                          right: 6,
                        ),
                        variant: ButtonVariant.FillWhiteA700,
                        fontStyle: ButtonFontStyle.PoppinsRegular14Bluegray900,
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        height: getVerticalSize(
                          40,
                        ),
                        text: "lbl_tidak_pedas".tr,
                        margin: getMargin(
                          left: 6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 35,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.whiteA700,
                  indent: getHorizontalSize(
                    7,
                  ),
                  endIndent: getHorizontalSize(
                    7,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 34,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        height: getVerticalSize(
                          40,
                        ),
                        text: "lbl_manis".tr,
                        margin: getMargin(
                          right: 6,
                        ),
                        variant: ButtonVariant.FillWhiteA700,
                        fontStyle: ButtonFontStyle.PoppinsRegular14Bluegray900,
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        height: getVerticalSize(
                          40,
                        ),
                        text: "lbl_asin".tr,
                        margin: getMargin(
                          left: 6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 30,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        height: getVerticalSize(
                          40,
                        ),
                        text: "lbl_asam".tr,
                        margin: getMargin(
                          right: 6,
                        ),
                        variant: ButtonVariant.FillWhiteA700,
                        fontStyle: ButtonFontStyle.PoppinsRegular14Bluegray900,
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        height: getVerticalSize(
                          40,
                        ),
                        text: "lbl_manis".tr,
                        margin: getMargin(
                          left: 6,
                        ),
                        variant: ButtonVariant.FillWhiteA700,
                        fontStyle: ButtonFontStyle.PoppinsRegular14Bluegray900,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
