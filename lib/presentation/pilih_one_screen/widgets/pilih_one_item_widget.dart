import '../controller/pilih_one_controller.dart';
import '../models/pilih_one_item_model.dart';
import 'package:bmapa/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PilihOneItemWidget extends StatelessWidget {
  PilihOneItemWidget(this.pilihOneItemModelObj);

  PilihOneItemModel pilihOneItemModelObj;

  var controller = Get.find<PilihOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        150,
      ),
      width: getHorizontalSize(
        100,
      ),
      decoration: BoxDecoration(
        color: ColorConstant.blueGray100,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20,
          ),
        ),
      ),
    );
  }
}
