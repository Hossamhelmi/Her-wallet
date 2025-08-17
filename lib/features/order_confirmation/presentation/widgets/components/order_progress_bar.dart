import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class OrderProgressBar extends StatelessWidget {
  final double progress;

  const OrderProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.w,
      child: LinearProgressIndicator(
        borderRadius: BorderRadius.circular(8.r),
        value: progress,
        backgroundColor: AppColors.greyIcon.withAlpha(50),
        color: AppColors.mainColor,
        minHeight: 4.h,
      ),
    );
  }
}
