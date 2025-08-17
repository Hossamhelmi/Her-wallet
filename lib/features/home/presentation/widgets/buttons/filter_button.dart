import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class FilterButton extends StatelessWidget {
  final VoidCallback onPressed;

  const FilterButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25.r,
      backgroundColor: AppColors.surface,
      child: IconButton(
        icon: Icon(
          Icons.filter_alt_outlined,
          color: AppColors.greyIcon,
          size: 30.w,
        ),
        onPressed: onPressed,
        padding: EdgeInsets.all(8.w),
        constraints: BoxConstraints(minWidth: 44.w, minHeight: 44.h),
      ),
    );
  }
}
