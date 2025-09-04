import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/widgets.dart';

class MyCircleDetailsScreen extends StatelessWidget {
  const MyCircleDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final circleName = args['circleName'] as String;
    final imagePath = args['imagePath'] as String;
    final isOwner = args['isOwner'] as bool;

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

