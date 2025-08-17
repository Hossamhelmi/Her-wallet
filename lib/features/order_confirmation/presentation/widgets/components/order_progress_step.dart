import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class OrderProgressStep extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isCompleted;
  final bool isActive;

  const OrderProgressStep({
    super.key,
    required this.icon,
    required this.label,
    required this.isCompleted,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 32.r,
          backgroundColor:
              isActive ? AppColors.appBar : AppColors.greyIcon.withAlpha(50),
          child: Icon(
            icon,
            size: 25.r,
            color: isActive ? AppColors.backgroundprimary : AppColors.mainColor,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 10.sp,
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
