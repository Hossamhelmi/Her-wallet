import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class RadioSelectionItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback? onTap;

  const RadioSelectionItem({
    super.key,
    required this.text,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          decoration: BoxDecoration(
            color:
                isSelected ? AppColors.mainColor.withAlpha(50) : Colors.white,
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color:
                  isSelected ? AppColors.mainColor : AppColors.iconGreyTertiary,
              width: isSelected ? 2.w : 1.w,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 12.sp,
                  color:
                      isSelected
                          ? AppColors.mainColor
                          : AppColors.textSecondary,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
              SizedBox(width: 4.w),
              Icon(
                isSelected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color:
                    isSelected ? AppColors.mainColor : AppColors.textSecondary,
                size: 22.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
