import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../sections/members_list_section.dart';

class MemberCard extends StatelessWidget {
  final MemberData data;
  final VoidCallback onTap;

  const MemberCard({super.key, required this.data, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 2.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
          decoration: BoxDecoration(
            color: AppColors.backgroundprimary,
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25.r,
                backgroundColor: AppColors.mainColor.withAlpha(20),
                backgroundImage: AssetImage(data.imagePath),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            data.name,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (data.isOwner) ...[
                          SizedBox(width: 5.w),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.pinkIcon,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Text(
                              'owner',
                              style: TextStyle(
                                color: AppColors.backgroundprimary,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      data.timeAgo,
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textTertiary,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
