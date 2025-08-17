import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class ProductInfoSection extends StatelessWidget {
  final String sellerName;
  final String sellerLogo;
  final String productName;
  final String rating;
  final String price;
  final String? discountText;
  final VoidCallback? onShareTap;

  const ProductInfoSection({
    super.key,
    required this.sellerName,
    required this.sellerLogo,
    required this.productName,
    required this.rating,
    required this.price,
    this.discountText,
    this.onShareTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Seller info and share button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    image: DecorationImage(
                      image: AssetImage(sellerLogo),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                Text(
                  sellerName,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
            Container(
              width: 40.w,
              height: 20.h,
              decoration: BoxDecoration(
                color: AppColors.backgroundprimary,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: AppColors.greyIcon.withOpacity(0.3),
                  width: 1.w,
                ),
              ),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10.r),
                child: InkWell(
                  onTap: onShareTap,
                  borderRadius: BorderRadius.circular(10.r),
                  child: Icon(
                    Icons.share_outlined,
                    color: AppColors.textPrimary,
                    size: 20.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),

        // Product name
        Text(
          productName,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 4.h),

        // Rating
        Row(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 16.sp),
            SizedBox(width: 4.w),
            Text(
              rating,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),

        // Price and discount
        Row(
          children: [
            Text(
              price,
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.mainColor,
              ),
            ),
            if (discountText != null) ...[
              SizedBox(width: 12.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: AppColors.redIcon.withAlpha(35),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Text(
                  discountText!,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.redIcon,
                  ),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}
