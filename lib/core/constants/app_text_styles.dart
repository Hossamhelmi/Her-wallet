import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class AppStyles {
  // Font family

  // Base text style
  static final TextStyle _baseStyle = TextStyle(
    fontFamily: GoogleFonts.tajawal().fontFamily,
    color: AppColors.textPrimary,
    fontWeight: FontWeight.w400,
  );

  // Large Title Styles
  static final TextStyle largeTitleXL = _baseStyle.copyWith(
    fontSize: 64,
    height: 68 / 64, // line height / font size
    fontWeight: FontWeight.w700, // Bold
  );

  static final TextStyle largeTitleL = _baseStyle.copyWith(
    fontSize: 40,
    height: 52 / 40, // line height / font size
    fontWeight: FontWeight.w700, // Bold
  );

  // Title Styles
  static final TextStyle titleXXL = _baseStyle.copyWith(
    fontSize: 32,
    color: AppColors.mainColor,
    height: 40 / 32, // line height / font size
    fontWeight: FontWeight.w900, // Medium
  );
  static final TextStyle titleXL = _baseStyle.copyWith(
    fontSize: 28,
    height: 36 / 24, // line height / font size
    fontWeight: FontWeight.w700, // Medium
  );
  static final TextStyle titleL = _baseStyle.copyWith(
    fontSize: 24,
    height: 36 / 24, // line height / font size
    fontWeight: FontWeight.w600, // Medium
  );

  static final TextStyle titleM = _baseStyle.copyWith(
    fontSize: 22,
    height: 32 / 22, // line height / font size
    fontWeight: FontWeight.w600, // Medium
  );

  static final TextStyle titleS = _baseStyle.copyWith(
    fontSize: 18,
    height: 28 / 18, // line height / font size
    fontWeight: FontWeight.w600, // Medium
  );

  // Body Text Styles
  static final TextStyle bodyL = _baseStyle.copyWith(
    fontSize: 16,
    height: 24 / 16, // line height / font size
    fontWeight: FontWeight.w300, // Bold
  );

  static final TextStyle bodyM = _baseStyle.copyWith(
    fontSize: 14,
    height: 24 / 14, // line height / font size
    fontWeight: FontWeight.w400, // Regular
  );

  // Caption Styles
  static final TextStyle captionL = _baseStyle.copyWith(
    fontSize: 12,
    height: 16 / 12, // line height / font size
    fontWeight: FontWeight.w500, // Medium
  );

  static final TextStyle captionM = _baseStyle.copyWith(
    fontSize: 10,
    height: 14 / 10, // line height / font size
    fontWeight: FontWeight.w500, // Medium
  );
  static const authOutlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.textTertiary),
    borderRadius: BorderRadius.all(Radius.circular(100)),
  );
 

}
