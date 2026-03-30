import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/widgets.dart';

class MyCircleDetailsScreen extends StatelessWidget {
  final String circleName;
  final String imagePath;
  final bool isOwner;
  const MyCircleDetailsScreen({super.key, required this.circleName, required this.imagePath, required this.isOwner});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleHeaderSection(
                  circleName: circleName,
                  memberCount: context.localizations.membersNumber,
                  role: isOwner ? context.localizations.ownerRole : context.localizations.memberRole,
                  coverImagePath: imagePath,
                ),
                SizedBox(height: 8.h),
                MyPostsSection(),
                SizedBox(height: 8.h), // Extra space for FAB
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: CreatePostFAB(),
    );
  }
}

