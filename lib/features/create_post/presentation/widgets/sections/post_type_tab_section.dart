import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class PostTypeTabSection extends StatelessWidget {
  final TabController tabController;
  final VoidCallback onTabChanged;

  const PostTypeTabSection({
    super.key,
    required this.tabController,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: TabBar(
        indicatorColor: AppColors.appBar,
        labelColor: AppColors.appBar,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [Tab(text: context.localizations.image), Tab(text: context.localizations.text)],
        controller: tabController,
        onTap: (index) => onTabChanged(),
      ),
    );
  }
}

