import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class RenewalDateSection extends StatelessWidget {
  const RenewalDateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.localizations.renewalDate,
            style: TextStyle(
              height: 1.0,
              color: AppColors.textSecondary,
              fontSize: 14.sp,
            ),
          ),
          Text(
            'Jan 1, 2024',
            style: TextStyle(
              height: 1.0,
              color: AppColors.textPrimary,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
