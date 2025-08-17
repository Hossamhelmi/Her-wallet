import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class OrderStatusStep extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isCompleted;
  final bool isActive;
  final Color? iconColor;
  final Color? backgroundColor;

  const OrderStatusStep({
    super.key,
    required this.icon,
    required this.label,
    required this.isCompleted,
    required this.isActive,
    this.iconColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    Color stepIconColor =
        iconColor ??
        (isCompleted || isActive ? AppColors.mainColor : AppColors.greyIcon);
    Color stepBackgroundColor =
        backgroundColor ??
        (isCompleted || isActive
            ? AppColors.greyIcon.withAlpha(50)
            : AppColors.greyIcon.withAlpha(50));

    return Column(
      children: [
        CircleAvatar(
          radius: 28.r,
          backgroundColor: stepBackgroundColor,
          child: Icon(icon, size: 24.sp, color: stepIconColor),
        ),
        SizedBox(height: 8.h),
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColors.textPrimary,
            fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
