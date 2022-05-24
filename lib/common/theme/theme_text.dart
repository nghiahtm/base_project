import 'package:base_project/common/constant/color_constant.dart';
import 'package:flutter/cupertino.dart';

class ThemeTextCustom {
  static TextStyle fontStyleMain(double size,
          {double height = 35.12, Color textColor = ColorConstant.white}) =>
      TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: size,
          height: height,
          color: textColor);
}
