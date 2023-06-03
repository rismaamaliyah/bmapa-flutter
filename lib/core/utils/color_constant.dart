import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#9e896a');

  static Color gray700 = fromHex('#5b5b5b');

  static Color gray500 = fromHex('#acacac');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color black900 = fromHex('#000000');

  static Color blueGray400 = fromHex('#888888');

  static Color blueGray900 = fromHex('#333333');

  static Color red400 = fromHex('#bb5053');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray100 = fromHex('#f5f5f5');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
