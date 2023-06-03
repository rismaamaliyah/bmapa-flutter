import '../pilih_one_screen/widgets/pilih_one_item_widget.dart';
import 'controller/pilih_one_controller.dart';
import 'models/pilih_one_item_model.dart';
import 'package:bmapa/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PilihOneScreen extends GetWidget<PilihOneController> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 27,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        306,
                      ),
                      margin: getMargin(
                        left: 1,
                        right: 5,
                      ),
                      child: Text(
                        "msg_saran_untuk_kamu".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold48,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: getPadding(
                          top: 39,
                        ),
                        child: Obx(
                          () => GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: getVerticalSize(
                                151,
                              ),
                              crossAxisCount: 3,
                              mainAxisSpacing: getHorizontalSize(
                                6,
                              ),
                              crossAxisSpacing: getHorizontalSize(
                                6,
                              ),
                            ),
                            physics: BouncingScrollPhysics(),
                            itemCount: controller.pilihOneModelObj.value
                                .pilihOneItemList.value.length,
                            itemBuilder: (context, index) {
                              PilihOneItemModel model = controller
                                  .pilihOneModelObj
                                  .value
                                  .pilihOneItemList
                                  .value[index];
                              return PilihOneItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
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
