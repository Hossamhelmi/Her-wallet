import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final bool showViewAll;
  final VoidCallback? onViewAllTap;

  const SectionHeader({
    super.key,
    required this.title,
    this.showViewAll = true,
    this.onViewAllTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize:
                  title == context.localizations.yourRecentlyReadArticles ? 14.sp : 16.sp,
              fontWeight: FontWeight.bold,
              height: 1.0,
            ),
          ),
          if (showViewAll)
            TextButton(
              onPressed: onViewAllTap,
              child: Text(
                context.localizations.viewAll,
                style: TextStyle(color: AppColors.mainColor, fontSize: 14.sp),
              ),
            ),
        ],
      ),
    );
  }
}

