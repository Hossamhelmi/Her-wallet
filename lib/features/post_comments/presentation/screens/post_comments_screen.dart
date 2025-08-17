import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/features/my_circle_details/presentation/widgets/widgets.dart';
import '../widgets/widgets.dart';

class PostCommentsScreen extends StatelessWidget {
  const PostCommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.postComments),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h),
                  _buildOriginalPost(context),
                  SizedBox(height: 8.h),
                  CommentsSection(),
                  SizedBox(height: 100.h), // Space for input section
                ],
              ),
            ),
          ),
          CommentInputSection(),
        ],
      ),
    );
  }

  Widget _buildOriginalPost(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: PostCard(
        userName: context.localizations.janeDoe,
        userImage: 'assets/images/user1.jpg',
        timeAgo: context.localizations.twoHoursAgo,
        content: context.localizations.puppyPostContent,
        likeCount: 120,
        commentCount: 45,
      ),
    );
  }
}

