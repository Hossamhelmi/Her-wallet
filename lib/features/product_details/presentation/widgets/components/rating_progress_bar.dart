import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class RatingProgressBar extends StatelessWidget {
  final int stars;
  final double percentage;
  final double value;

  const RatingProgressBar({
    super.key,
    required this.stars,
    required this.percentage,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        children: [
          SizedBox(
            width: 35.w,
            child: Text(
              '${(percentage * 100).toInt()}%',
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.end,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Container(
              height: 6.h,
              child: LinearProgressIndicator(
                value: value,
                backgroundColor: AppColors.iconGreyTertiary.withOpacity(0.3),
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.mainColor),
                minHeight: 6.h,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
          SizedBox(width: 8.w),
          SizedBox(
            width: 55.w,
            child: Text(
              '$stars Stars',
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
