import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class PrivacyOptionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final bool isSelected;

  const PrivacyOptionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
      width: MediaQuery.of(context).size.width * 0.43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(
          color: isSelected ? AppColors.mainColor : AppColors.textTertiary,
          width: 1.5.w,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: isSelected ? AppColors.mainColor : AppColors.greyIcon,
            size: 20.r,
          ),
          SizedBox(width: 8.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color:
                      isSelected ? AppColors.textPrimary : AppColors.greyIcon,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 2.h),
              Text(
                description,
                style: TextStyle(
                  color:
                      isSelected
                          ? AppColors.textSecondary
                          : AppColors.greyIcon,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
