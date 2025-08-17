import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';

class DiscoverCircleCard extends StatelessWidget {
  final String name;
  final String membersCount;
  final IconData icon;
  const DiscoverCircleCard({
    super.key,
    required this.name,
    required this.membersCount,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16.r),
      elevation: 1,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundprimary,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundColor: AppColors.mainColor.withAlpha(20),
                child: Icon(icon, color: AppColors.mainColor, size: 25.sp),
              ),
              10.verticalSpace,
              Text(
                name,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 1,
              ),
              3.verticalSpace,
              Text(
                membersCount,
                style: TextStyle(fontSize: 12.sp, color: Colors.grey),
              ),
              Spacer(),
              SizedBox(
                height: 28.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.myCircleDetails);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Text(context.localizations.joinNow),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
