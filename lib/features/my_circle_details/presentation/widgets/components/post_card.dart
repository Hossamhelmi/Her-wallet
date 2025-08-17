import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../components/post_interaction_bar.dart';

class PostCard extends StatelessWidget {
  final String userName;
  final String userImage;
  final String timeAgo;
  final String content;
  final String? postImage;
  final int likeCount;
  final int commentCount;
  final VoidCallback? onCommentTap;

  const PostCard({
    super.key,
    required this.userName,
    required this.userImage,
    required this.timeAgo,
    required this.content,
    this.postImage,
    required this.likeCount,
    required this.commentCount,
    this.onCommentTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16.r),
      elevation: 1,
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColors.backgroundprimary,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserHeader(),
            SizedBox(height: 8.h),
            if (postImage != null) ...[
              _buildPostImage(),
              SizedBox(height: 8.h),
            ],
            _buildPostContent(),
            SizedBox(height: 8.h),
            PostInteractionBar(
              likeCount: likeCount,
              commentCount: commentCount,
              onCommentTap: onCommentTap,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserHeader() {
    return Row(
      children: [
        CircleAvatar(radius: 25.r, backgroundImage: AssetImage(userImage)),
        SizedBox(width: 8.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4.h),
              Text(
                timeAgo,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.textSecondary,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPostImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: Image.asset(
        postImage!,
        fit: BoxFit.cover,
        width: double.infinity,
        height: 200.h,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            height: 200.h,
            decoration: BoxDecoration(
              color: AppColors.grey200,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Icon(
              Icons.image_not_supported,
              size: 48.r,
              color: AppColors.greyIcon,
            ),
          );
        },
      ),
    );
  }

  Widget _buildPostContent() {
    return Text(
      content,
      style: TextStyle(fontSize: 14.sp, color: AppColors.textPrimary),
      textAlign: TextAlign.start,
    );
  }
}
