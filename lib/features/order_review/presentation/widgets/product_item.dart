import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class ProductItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String details;
  final String price;
  final VoidCallback? onDelete;

  const ProductItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.details,
    required this.price,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                imagePath,
                height: 60.h,
                width: 80.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    details,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.boldColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            
            child: Container(     
              decoration: BoxDecoration(
                color: AppColors.greyPrimary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(22.r),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.delete_outline,
                  color: AppColors.greyPrimary,
                  size: 16.sp,
                ),
                onPressed: onDelete,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
