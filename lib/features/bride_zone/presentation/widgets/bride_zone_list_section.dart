import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class BrideZoneListSection extends StatelessWidget {
  final String title;
  final List<Widget> serviceCards;
  const BrideZoneListSection({
    super.key,
    required this.title,
    required this.serviceCards,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
        ),

        SizedBox(height: 5.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Wrap(spacing: 10.w, runSpacing: 5.h, children: serviceCards),
        ),
      ],
    );
  }
}