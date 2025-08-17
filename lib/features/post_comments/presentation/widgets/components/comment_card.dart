import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class CommentCard extends StatelessWidget {
  final String userName;
  final String userImage;
  final String comment;
  final String timeAgo;
  final int likeCount;
  final VoidCallback? onLikeTap;

  const CommentCard({
    super.key,
    required this.userName,
    required this.userImage,
    required this.comment,
    required this.timeAgo,
    required this.likeCount,
    this.onLikeTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(12.r),
      elevation: 1,
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColors.backgroundprimary,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(radius: 20.r, backgroundImage: AssetImage(userImage)),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    comment,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.textSecondary,
                      height: 1.4,
                    ),
                    maxLines: null,
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        timeAgo,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.greyIcon,
                        ),
                      ),
                      GestureDetector(
                        onTap: onLikeTap,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.thumb_up_outlined,
                                size: 18.sp,
                                color: AppColors.greyIcon,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                '$likeCount',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.greyIcon,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
