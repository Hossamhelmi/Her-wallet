import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class CustomChip extends StatelessWidget {
  final String value;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomChip({
    super.key,
    required this.value,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.mainColor : AppColors.surface,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: isSelected ? AppColors.appBar : AppColors.grey200,
            width: 1.5.w,
          ),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: AppColors.mainColor.withOpacity(0.3),
                blurRadius: 5.r,
                offset: Offset(0, 2.h),
              ),
          ],
        ),
        child: Center(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : AppColors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
