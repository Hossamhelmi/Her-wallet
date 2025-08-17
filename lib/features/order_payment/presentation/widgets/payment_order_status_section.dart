import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class PaymentOrderStatusSection extends StatelessWidget {
  const PaymentOrderStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
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
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Row(
              children: [
                Text(
                  context.localizations.orderStatus,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 6.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.greenIcon.withAlpha(50),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Text(
                    context.localizations.awaitingConfirmation,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColors.greenIcon,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(color: AppColors.grey200),
          const PaymentProgressIndicator(),
        ],
      ),
    );
  }
}

class PaymentProgressIndicator extends StatelessWidget {
  const PaymentProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Row(
        children: [
          buildProgressStep(
            icon: Icons.check,
            label: context.localizations.review,
            isActive: true,
          ),
          SizedBox(width: 8.w),
          buildProgressBar(progress: 1.0),
          SizedBox(width: 8.w),
          buildProgressStep(
            icon: Icons.payment_outlined,
            label: context.localizations.payment,
            isActive: true,
          ),
          SizedBox(width: 4.w),
          buildProgressBar(progress: 0.0),
          SizedBox(width: 4.w),
          buildProgressStep(
            icon: Icons.check_circle_outline,
            label: context.localizations.confirm,
            isActive: false,
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
          radius: 30.r,
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
            fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Widget buildProgressBar({required double progress}) {
    return SizedBox(
      width: 75.w,
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

