import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class TransactionsRawSection extends StatelessWidget {
  final Color iconColor;
  final Color backgroundColor;
  final String title;
  final String date;
  final String amount;
  final String from;
  final String imagePath;

  const TransactionsRawSection({
    super.key,
    required this.iconColor,
    required this.backgroundColor,
    required this.title,
    required this.date,
    required this.amount,
    required this.from,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              radius: 22.r,
              backgroundColor: backgroundColor,
              child: Image.asset(
                'assets/icons/$imagePath.png',
                color: iconColor,
                width: 22.w,
                height: 24.h,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.receipt_outlined,
                    color: iconColor,
                    size: 22.w,
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 3,
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
          Expanded(
            flex: 2,
            child: Column(
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
                            : amount.startsWith('-')
                            ? AppColors.redIcon
                            : iconColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2.h),
                Text(
                  from,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textSecondary,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
