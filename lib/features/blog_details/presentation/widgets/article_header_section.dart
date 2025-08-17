import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class ArticleHeaderSection extends StatelessWidget {
  final String imagePath;
  final String category;
  final String date;
  final String title;
  final String authorImage;
  final String authorName;

  const ArticleHeaderSection({
    super.key,
    required this.imagePath,
    required this.category,
    required this.date,
    required this.title,
    required this.authorImage,
    required this.authorName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.asset(imagePath),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: AppColors.mainColor.withAlpha(50),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  category,
                  style: TextStyle(color: AppColors.mainColor, fontSize: 12.sp),
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 16.r,
                backgroundImage: AssetImage(authorImage),
              ),
              SizedBox(width: 8.w),
              Text(
                authorName,
                style: TextStyle(fontSize: 14.sp, color: AppColors.textPrimary),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
