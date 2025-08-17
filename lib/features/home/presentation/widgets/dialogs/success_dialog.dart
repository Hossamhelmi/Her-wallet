import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class SuccessDialog extends StatelessWidget {
  final String title;
  final String message;
  final String? transactionId;
  final VoidCallback? onOkPressed;

  const SuccessDialog({
    super.key,
    required this.title,
    required this.message,
    this.transactionId,
    this.onOkPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      contentPadding: EdgeInsets.all(24.w),
      content: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.85,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/verified.png',
              width: 100.w,
              height: 100.h,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.check_circle,
                  color: AppColors.success,
                  size: 100.w,
                );
              },
            ),
            SizedBox(height: 16.h),
            Text(
              title,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12.h),
            Text(
              message,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.textSecondary,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
            if (transactionId != null) ...[
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: AppColors.grey200,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Text(
                  '${context.localizations.transactionId}\n$transactionId',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.textPrimary,
                    height: 1.3,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
            SizedBox(height: 12.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onOkPressed ?? () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.appBar,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                ),
                child: Text(
                  context.localizations.backToHome,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

