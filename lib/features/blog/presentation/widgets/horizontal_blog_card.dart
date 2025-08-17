import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class HorizontalBlogCard extends StatelessWidget {
  final String imagePath;
  final String category;
  final String title;
  final String description;
  final Color categoryColor;
  final VoidCallback? onTap;

  const HorizontalBlogCard({
    super.key,
    required this.imagePath,
    required this.category,
    required this.title,
    required this.description,
    required this.categoryColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.0.w, left: 24.0.w, bottom: 10.0.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 110.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.r),
                  bottomLeft: Radius.circular(10.r),
                ),
                child: Image.asset(
                  imagePath,
                  width: 75.w,
                  height: 120.h,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.0.w,
                          vertical: 4.0.h,
                        ),
                        decoration: BoxDecoration(
                          color: categoryColor.withAlpha(20),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Text(
                          category,
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: categoryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4.h),
                      Expanded(
                        child: Text(
                          description,
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.textSecondary,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
