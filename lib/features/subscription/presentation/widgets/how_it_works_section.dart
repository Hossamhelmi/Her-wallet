import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildSectionTitle(context), _buildStepsRow(context)],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
      child: Text(
        context.localizations.howItWorks,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  Widget _buildStepsRow(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HowItWorksStep(
              icon: Icons.badge,
              title: context.localizations.chooseYourBox,
              description: context.localizations.selectWhatMatchesYourIntersets,
            ),
            HowItWorksStep(
              icon: Icons.calendar_month,
              title: context.localizations.pickAPlan,
              description: context.localizations.goldSilverOrBronze,
            ),
            HowItWorksStep(
              icon: Icons.card_giftcard,
              title: context.localizations.enjoyMonthlyDelivery,
              description: context.localizations.yourBoxArrives,
            ),
          ],
        ),
      ),
    );
  }
}

class HowItWorksStep extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const HowItWorksStep({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: 55.w,
                height: 55.h,
                decoration: BoxDecoration(
                  color: AppColors.mainColor.withAlpha(20),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 28.sp, color: AppColors.mainColor),
              ),
            ),
            SizedBox(height: 3.h),
            Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 1,

              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 4.h),
            Expanded(
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10.sp,
                  color: AppColors.textSecondary,
                  height: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

