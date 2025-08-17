import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/constants/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? hintstyle;
  final double? cusorHight;
  final int? maxLines;
  final int? minLines;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextEditingController? controller;
  final bool readOnly;
  final String? initialValue;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
    this.textInputAction,
    this.contentPadding,
    this.hintstyle,
    this.cusorHight,
    this.maxLines,
    this.minLines,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.controller,
    this.readOnly = false,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: TextFormField(
          initialValue: initialValue,
          readOnly: readOnly,
          controller: controller,
          minLines: minLines ?? 1,
          maxLines: maxLines ?? 1,
          cursorHeight: cusorHight ?? 20.h,

          textInputAction: textInputAction,
          keyboardType: keyboardType,
          obscureText: obscureText,
          style: TextStyle(fontSize: 16.sp, color: AppColors.textPrimary),
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintStyle:
                hintstyle ??
                TextStyle(color: const Color(0xFF757575), fontSize: 14.sp),
            contentPadding:
                contentPadding ??
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: border ?? AppStyles.authOutlineInputBorder,
            enabledBorder:
                enabledBorder ??
                AppStyles.authOutlineInputBorder.copyWith(
                  borderSide: BorderSide(
                    color: AppColors.textTertiary,
                    width: 1.w,
                  ),
                ),
            focusedBorder:
                focusedBorder ??
                AppStyles.authOutlineInputBorder.copyWith(
                  borderSide: BorderSide(
                    color: AppColors.mainColor,
                    width: 2.w,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
