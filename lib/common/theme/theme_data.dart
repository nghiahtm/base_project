import 'package:base_project/common/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeDataCustom {
  static ThemeData buildTheme() {
    return ThemeData(
        textTheme: GoogleFonts.pacificoTextTheme(),
        scaffoldBackgroundColor: ColorConstant.mainColor);
  }
}
