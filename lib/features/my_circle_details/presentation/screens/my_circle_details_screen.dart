import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/widgets.dart';

class MyCircleDetailsScreen extends StatelessWidget {
  const MyCircleDetailsScreen({super.key});

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
                  circleName: context.localizations.animalsCircle,
                  memberCount: context.localizations.membersNumber,
                  role: context.localizations.ownerRole,
                  coverImagePath: 'assets/images/circle_cover1.jpg',
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

