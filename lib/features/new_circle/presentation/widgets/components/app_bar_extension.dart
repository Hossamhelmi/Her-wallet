import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class AppBarExtension extends StatelessWidget {
  const AppBarExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.appBar,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100.r),
          bottomRight: Radius.circular(100.r),
        ),
      ),
    );
  }
}
