import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class CompactBlogCard extends StatelessWidget {
  final String imagePath;
  final String category;
  final String title;
  final String description;
  final VoidCallback? onTap;

  const CompactBlogCard({
    super.key,
    required this.imagePath,
    required this.category,
    required this.title,
    required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 220.h,
        decoration: BoxDecoration(
          color: AppColors.backgroundprimary,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110.h,
              width: MediaQuery.of(context).size.width * 6.8 / 16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 3.0,
                  horizontal: 8.0,
                ),
                decoration: BoxDecoration(
                  color: AppColors.appBar.withAlpha(30),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  category,
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 12.sp,
                    height: 1.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 3.0.h),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  height: 1.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.0.h, horizontal: 8.0.w),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 6 / 16,
                child: Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
