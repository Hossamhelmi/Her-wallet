import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class ArticleContentSection extends StatelessWidget {
  final String description;
  final String title;
  final String content;

  const ArticleContentSection({
    super.key,
    required this.description,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(
            description,
            style: TextStyle(fontSize: 14.sp, color: AppColors.textSecondary),
          ),
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(
            content,
            style: TextStyle(fontSize: 14.sp, color: AppColors.textSecondary),
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
