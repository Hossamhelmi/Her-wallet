import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../components/comment_card.dart';

class CommentsSection extends StatelessWidget {
  const CommentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle(context),
          SizedBox(height: 2.h),
          _buildCommentsList(),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context) {
    return Text(
      context.localizations.comments,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
    );
  }

  Widget _buildCommentsList() {
    return Column(
      children: [
        CommentCard(
          userName: 'Sarah Smith',
          userImage: 'assets/images/user1.jpg',
          comment:
              'Great post! I love your new puppy. He looks adorable! Can\'t wait to see more pictures.',
          timeAgo: '2 hours ago',
          likeCount: 45,
          onLikeTap: () {
            // Handle like action
          },
        ),
        // Add more comments here if needed
      ],
    );
  }
}

