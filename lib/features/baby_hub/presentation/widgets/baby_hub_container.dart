

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';

class BabyHubContainer extends StatelessWidget {
  final String iamgePath;
  final String title;
  final String price;
  final String provider;
  const BabyHubContainer({
    super.key,
    required this.iamgePath,
    required this.title,
    required this.price,
    required this.provider,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.productDetails,
            arguments: {
              'title': title,
              'imageUrl': iamgePath,
            });
      },
      child: Container(
        height: 210.h,
        decoration: BoxDecoration(
          color: AppColors.backgroundprimary,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130.h,
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
                child: Image.asset(
                  iamgePath,
                  width: MediaQuery.of(context).size.width * 7 / 16,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 3.0.h,
                  horizontal: 8.0.w,
                ),
                decoration: BoxDecoration(
                  color: AppColors.appBar.withAlpha(30),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  provider,
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 12.sp,
                    height: 1.0.h,
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
                  height: 1.0.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.0.h, horizontal: 8.0.w),
              child: Text(
                price,
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
