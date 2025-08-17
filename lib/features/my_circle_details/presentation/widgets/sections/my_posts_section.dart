import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import '../components/post_card.dart';

class MyPostsSection extends StatelessWidget {
  const MyPostsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(context),
        SizedBox(height: 4.h),
        _buildPostsList(context),
      ],
    );
  }

  Widget _buildSectionTitle(BuildContext context) {
    return Text(
      context.localizations.myPosts,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w800,
        color: AppColors.textPrimary,
      ),
    );
  }

  Widget _buildPostsList(BuildContext context) {
    return Column(
      children: [
        PostCard(
          userName: context.localizations.janeDoe,
          userImage: 'assets/images/user1.jpg',
          timeAgo: context.localizations.twoHoursAgo,
          content: context.localizations.puppyPostContent,
          likeCount: 120,
          commentCount: 45,
          onCommentTap: () {
            Navigator.pushNamed(context, AppRoutes.postComments);
          },
        ),
        SizedBox(height: 4.h),
        PostCard(
          userName: context.localizations.janeDoe,
          userImage: 'assets/images/user1.jpg',
          timeAgo: context.localizations.twoHoursAgo,
          content: context.localizations.puppyPostContent,
          postImage: 'assets/images/kids1.jpg',
          likeCount: 120,
          commentCount: 45,
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}

