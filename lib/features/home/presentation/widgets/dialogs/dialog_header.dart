import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class DialogHeader extends StatelessWidget {
  final String title;
  final VoidCallback onClose;

  const DialogHeader({super.key, required this.title, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              color: AppColors.appBar,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        IconButton(
          onPressed: onClose,
          icon: Icon(Icons.close, color: AppColors.appBar, size: 24.w),
          padding: EdgeInsets.all(8.w),
          constraints: BoxConstraints(minWidth: 44.w, minHeight: 44.h),
        ),
      ],
    );
  }
}
