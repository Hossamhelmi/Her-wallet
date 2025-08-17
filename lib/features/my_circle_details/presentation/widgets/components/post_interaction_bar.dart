import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class PostInteractionBar extends StatelessWidget {
  final int likeCount;
  final int commentCount;
  final VoidCallback? onLikeTap;
  final VoidCallback? onCommentTap;

  const PostInteractionBar({
    super.key,
    required this.likeCount,
    required this.commentCount,
    this.onLikeTap,
    this.onCommentTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onLikeTap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.thumb_up_outlined,
                  color: AppColors.greyIcon,
                  size: 20.r,
                ),
                SizedBox(width: 4.w),
                Text(
                  '$likeCount',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: onCommentTap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.comment_outlined,
                  color: AppColors.greyIcon,
                  size: 20.r,
                ),
                SizedBox(width: 4.w),
                Text(
                  '$commentCount',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
