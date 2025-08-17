import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';

class DatePickerField extends StatelessWidget {
  final String label;
  final String hintText;
  final VoidCallback onTap;
  final TextEditingController controller;

  const DatePickerField({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14.sp, color: AppColors.textSecondary),
        ),
        CustomTextFormField(
          hintstyle: TextStyle(color: AppColors.textSecondary, fontSize: 15.sp),
          controller: controller,
          hintText: hintText,
          textInputAction: TextInputAction.next,         
          prefixIcon: IconButton(
            icon: Icon(
              Icons.calendar_today_outlined,
              color: AppColors.textSecondary,
              size: 15.w,
            ),
            onPressed: onTap,
          ),
        ),
      ],
    );
  }
}
