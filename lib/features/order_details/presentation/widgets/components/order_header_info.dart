import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class OrderHeaderInfo extends StatelessWidget {
  final String date;
  final String orderNumber;
  final String status;
  final Color statusColor;
  final Color statusBackgroundColor;

  const OrderHeaderInfo({
    super.key,
    required this.date,
    required this.orderNumber,
    required this.status,
    required this.statusColor,
    required this.statusBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: TextStyle(fontSize: 14.sp, color: AppColors.textSecondary),
            ),
            SizedBox(height: 4.h),
            Text(
              orderNumber,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
          decoration: BoxDecoration(
            color: statusBackgroundColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Text(
            status,
            style: TextStyle(
              fontSize: 12.sp,
              color: statusColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
