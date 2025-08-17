import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';

class DialogInputField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;

  const DialogInputField({

    super.key,
    required this.label,
    required this.hintText,
    this.keyboardType,
    this.suffixIcon,
    this.textInputAction = TextInputAction.next,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          CustomTextFormField(
            controller: controller,
            hintText: hintText,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            suffixIcon: suffixIcon,
          ),
        ],
      ),
    );
  }
}
