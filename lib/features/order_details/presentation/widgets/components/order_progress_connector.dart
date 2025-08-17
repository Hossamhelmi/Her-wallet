import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class OrderProgressConnector extends StatelessWidget {
  final bool isCompleted;
  final double width;

  const OrderProgressConnector({
    super.key,
    required this.isCompleted,
    this.width = 45,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      child: LinearProgressIndicator(
        borderRadius: BorderRadius.circular(8.r),
        value: isCompleted ? 1.0 : 0.0,
        backgroundColor: AppColors.greyIcon.withAlpha(50),
        color: AppColors.mainColor,
        minHeight: 4.h,
      ),
    );
  }
}
