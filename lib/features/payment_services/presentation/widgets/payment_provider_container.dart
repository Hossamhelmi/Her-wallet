import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class PaymentProviderContainer extends StatelessWidget {
  final String providerName;
  final String providerImage;
  final VoidCallback? onTap;

  const PaymentProviderContainer({
    super.key,
    required this.providerName,
    required this.providerImage,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.w),
        width: 70.w,
        height: 85.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.textTertiary),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              providerImage,
              width: 35.w,
              height: 40.h,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 4.h),
            Text(
              providerName,
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
