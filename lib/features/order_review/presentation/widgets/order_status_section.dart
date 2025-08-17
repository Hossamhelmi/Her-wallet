import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class OrderStatusSection extends StatelessWidget {
  const OrderStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16.w, left: 16.w, top: 16.h),
            child: Row(
              children: [
                Text(
                  context.localizations.orderStatus,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.greenIcon.withAlpha(50),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Text(
                    context.localizations.awaitingConfirmation,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.greenIcon,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Divider(color: AppColors.grey200),
          const OrderProgressIndicator(),
        ],
      ),
    );
  }
}

class OrderProgressIndicator extends StatelessWidget {
  const OrderProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.w),
      child: Row(
        children: [
          Expanded(
            child: buildProgressStep(
              icon: Icons.new_releases_outlined,
              label: context.localizations.review,
              isActive: true,
            ),
          ),
          Expanded(child: buildProgressBar(progress: 0.6)),
          Expanded(
            child: buildProgressStep(
              icon: Icons.payment_outlined,
              label: context.localizations.payment,
              isActive: false,
            ),
          ),

          Expanded(child: buildProgressBar(progress: 0.0)),

          Expanded(
            child: buildProgressStep(
              icon: Icons.check_circle_outline,
              label: context.localizations.confirmed,
              isActive: false,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProgressStep({
    required IconData icon,
    required String label,
    required bool isActive,
  }) {
    return Column(
      children: [
        CircleAvatar(
          radius: 22.r,
          backgroundColor:
              isActive ? AppColors.appBar : AppColors.greyIcon.withAlpha(50),
          child: Icon(icon, size: 24.sp, color: AppColors.backgroundprimary),
        ),
        SizedBox(height: 8.h),
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget buildProgressBar({required double progress}) {
    return SizedBox(
      width: 45.w,
      child: LinearProgressIndicator(
        borderRadius: BorderRadius.circular(8.r),
        value: progress,
        backgroundColor: AppColors.greyIcon.withAlpha(50),
        color: AppColors.mainColor,
        minHeight: 5.h,
      ),
    );
  }
}

