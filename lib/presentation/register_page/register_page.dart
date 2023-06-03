import 'controller/register_controller.dart';
import 'models/register_model.dart';
import 'package:bmapa/core/app_export.dart';
import 'package:bmapa/core/utils/validation_functions.dart';
import 'package:bmapa/widgets/custom_button.dart';
import 'package:bmapa/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  RegisterController controller =
      Get.put(RegisterController(RegisterModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 45,
                    right: 23,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          287,
                        ),
                        child: Text(
                          "msg_lorem_ipsum_is_simply".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 36,
                        ),
                        child: Text(
                          "lbl_username".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        autofocus: true,
                        controller: controller.usernameoneController,
                        hintText: "msg_enter_your_user".tr,
                        margin: getMargin(
                          top: 10,
                          right: 10,
                        ),
                        validator: (value) {
                          if (!isText(value)) {
                            return "Please enter valid text";
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "lbl_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular14,
                        ),
                      ),
                      Obx(
                        () => CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: controller.passwordoneController,
                          hintText: "msg_enter_your_password".tr,
                          margin: getMargin(
                            top: 11,
                            right: 10,
                          ),
                          padding: TextFormFieldPadding.PaddingT14_1,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: InkWell(
                            onTap: () {
                              controller.isShowPassword.value =
                                  !controller.isShowPassword.value;
                            },
                            child: Container(
                              margin: getMargin(
                                left: 12,
                                top: 15,
                                right: 17,
                                bottom: 15,
                              ),
                              child: CustomImageView(
                                svgPath: controller.isShowPassword.value
                                    ? ImageConstant.imgInvisible1
                                    : ImageConstant.imgInvisible1,
                              ),
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(
                              47,
                            ),
                          ),
                          validator: (value) {
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "Please enter valid password";
                            }
                            return null;
                          },
                          isObscureText: controller.isShowPassword.value,
                        ),
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          42,
                        ),
                        text: "lbl_register".tr,
                        margin: getMargin(
                          left: 75,
                          top: 89,
                          right: 9,
                        ),
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
