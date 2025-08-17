import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class ProductDescriptionText extends StatelessWidget {
  final String description;
  final TextStyle? style;

  const ProductDescriptionText({
    super.key,
    required this.description,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style:
          style ??
          TextStyle(
            fontSize: 14.sp,
            color: AppColors.textSecondary,
            height: 1.4,
          ),
    );
  }
}
