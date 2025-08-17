import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class RatingSection extends StatelessWidget {
  final double rating;
  final String? customText;

  const RatingSection({super.key, required this.rating, this.customText});

  @override
  Widget build(BuildContext context) {
    return Text(
      customText ?? 'Rating(subscriber reviews): ⭐ $rating',
      style: TextStyle(fontSize: 14.sp, color: AppColors.textSecondary),
    );
  }
}
