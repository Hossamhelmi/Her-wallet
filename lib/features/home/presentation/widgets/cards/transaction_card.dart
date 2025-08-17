import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class TransactionCard extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final String title;
  final String date;
  final String amount;
  final String from;
  final String imagePath;

  const TransactionCard({
    super.key,
    required this.backgroundColor,
    required this.iconColor,
    required this.title,
    required this.date,
    required this.amount,
    required this.from,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 14.h),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: backgroundColor,
            radius: 22.r,
            child: Image.asset(
              'assets/icons/$imagePath.png',
              width: 24.w,
              height: 24.h,
              color: iconColor,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.receipt_outlined,
                  color: iconColor,
                  size: 24.w,
                );
              },
            ),
          ),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color:
                      amount.startsWith('+')
                          ? AppColors.greenIcon
                          : AppColors.redIcon,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 2.h),
              Text(
                from,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textSecondary,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
