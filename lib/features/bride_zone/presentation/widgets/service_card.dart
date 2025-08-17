import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';

class ServiceCard extends StatelessWidget {
  final String name;
  final String specialization;
  final String rating;
  const ServiceCard({
    super.key,
    required this.name,
    required this.specialization,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 10.h, bottom: 5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 22.r,
                backgroundImage: AssetImage('assets/images/woman.jpg'),
              ),
              SizedBox(width: 5.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 1,
                  ),
                  Text(
                    specialization,
                    style: TextStyle(
                      fontSize: 9.sp,
                      color: AppColors.textSecondary,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    '⭐⭐⭐⭐⭐ 4.8',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 5.h),
          SizedBox(
            height: 30.h,
            width: MediaQuery.of(context).size.width * 0.41,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.w),
              ),
              child: Text(context.localizations.viewDetails),
            ),
          ),
        ],
      ),
    );
  }
}
