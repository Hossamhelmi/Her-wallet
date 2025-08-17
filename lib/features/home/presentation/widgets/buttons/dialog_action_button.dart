import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class DialogActionButton extends StatelessWidget {
  final String text;
  final bool isPrimary;
  final VoidCallback onTap;

  const DialogActionButton({
    super.key,
    required this.text,
    required this.isPrimary,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isPrimary ? AppColors.mainColor : AppColors.background,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isPrimary ? AppColors.background : AppColors.textPrimary,
              fontWeight: FontWeight.w500,
              fontSize: 15.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
