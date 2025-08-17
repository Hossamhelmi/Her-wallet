import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class TitleViewAllSection extends StatelessWidget {
  final String title;
  final VoidCallback? onViewAllPressed;

  const TitleViewAllSection({
    super.key,
    required this.title,
    this.onViewAllPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(width: 8.w),
          TextButton(
            onPressed: onViewAllPressed ??
                () {
                  
                },
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              minimumSize: Size(0, 32.h),
            ),
            child: Text(
              context.localizations.viewAll,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.mainColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

