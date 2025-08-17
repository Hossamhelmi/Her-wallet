import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/core/routes/app_routes.dart';

class ReminderSection extends StatelessWidget {
  const ReminderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.all(12.w),
      constraints: BoxConstraints(minHeight: 55.h),
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.mainColor.withOpacity(0.3),
            blurRadius: 8.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20.r,
            child: Icon(
              Icons.notifications_none_outlined,
              size: 22.w,
              color: AppColors.mainColor,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context.localizations.reminder,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  context.localizations.reminderDescription,
                  style: TextStyle(fontSize: 12.sp, color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          GestureDetector(
            onTap: () {
             Navigator.pushNamed(
                context,
                AppRoutes.topUpBalance, // Replace with your actual payment route
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                context.localizations.payNow,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 4.w),
                Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.white,
                  size: 16.w,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
