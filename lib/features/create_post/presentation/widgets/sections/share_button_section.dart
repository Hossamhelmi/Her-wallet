import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class ShareButtonSection extends StatelessWidget {
  final VoidCallback? onSharePressed;

  const ShareButtonSection({super.key, this.onSharePressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      child: ElevatedButton(
        onPressed:
            onSharePressed ??
            () {
              // Handle post creation logic
            },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          padding: EdgeInsets.symmetric(vertical: 5.h),
        ),
        child: Text(
          context.localizations.share,
          style: TextStyle(fontSize: 16.sp, color: Colors.white),
        ),
      ),
    );
  }
}

