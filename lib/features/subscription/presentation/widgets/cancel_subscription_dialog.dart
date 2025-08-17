import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class CancelSubscriptionDialog extends StatelessWidget {
  const CancelSubscriptionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(16.w),
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          const Divider(),
          _buildWarningText(context),
          SizedBox(height: 8.h),
          _buildCancellationPoints(context),
          SizedBox(height: 4.h),
          _buildWarningContainer(context),
          SizedBox(height: 8.h),
          _buildActionButtons(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        Text(
          context.localizations.cancelSubscription,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        const Spacer(),
        IconButton(
          icon: Icon(Icons.close, color: AppColors.textPrimary, size: 16.sp),
          onPressed: () => Navigator.of(context).pop(),
          padding: EdgeInsets.all(4.w),
        ),
      ],
    );
  }

  Widget _buildWarningText(BuildContext context) {
    return Text(
      context.localizations.areYouSureCancelSubscription,
      style: TextStyle(fontSize: 12.sp, color: AppColors.textPrimary),
    );
  }

  Widget _buildCancellationPoints(BuildContext context) {
    return Column(
      children: [
        _buildCancellationItem(
          context.localizations.cancelingAccumulatedPoints,
        ),
        SizedBox(height: 2.h),
        _buildCancellationItem(context.localizations.losingExclusiveAccess),
        SizedBox(height: 2.h),
        _buildCancellationItem(
          context.localizations.subscriptionCanceledImmediately,
        ),
      ],
    );
  }

  Widget _buildCancellationItem(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 20.w,
          height: 20.h,
          decoration: BoxDecoration(
            color: AppColors.redIcon.withAlpha(50),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.close, color: AppColors.redIcon, size: 12.sp),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 12.sp, color: AppColors.textPrimary),
          ),
        ),
      ],
    );
  }

  Widget _buildWarningContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: AppColors.redIcon.withAlpha(50),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        context.localizations.subscriptionCanceledImmediately,
        style: TextStyle(
          fontSize: 12.sp,
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.redIcon,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Text(
              context.localizations.confirmCancellation,
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: AppColors.textPrimary,
              side: BorderSide(color: AppColors.grey200, width: 1.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              context.localizations.cancel,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
