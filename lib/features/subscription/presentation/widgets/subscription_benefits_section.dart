import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class SubscriptionBenefitsSection extends StatelessWidget {
  const SubscriptionBenefitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle(context),
          SizedBox(height: 8.h),
          _buildBenefitsGrid(context),
          SizedBox(height: 5.h),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context) {
    return Text(
      context.localizations.subscriptionBenefits,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w800,
        color: AppColors.textPrimary,
      ),
    );
  }

  Widget _buildBenefitsGrid(BuildContext context) {
    return Wrap(
      spacing: 12.w,
      runSpacing: 12.h,
      children: [
        SubscriptionBenefitCard(
          icon: Icons.local_shipping,
          title: context.localizations.freeDeliviry,
          description: context.localizations.enjoyFreeShipping,
        ),
        SubscriptionBenefitCard(
          icon: Icons.card_giftcard,
          title: context.localizations.monthlyDiscounts,
          description: context.localizations.saveUpTo30,
        ),
        SubscriptionBenefitCard(
          icon: Icons.badge,
          title: context.localizations.exclusiveProducts,
          description: context.localizations.getAccessToPremium,
        ),
        SubscriptionBenefitCard(
          icon: Icons.cancel,
          title: context.localizations.flexibleCancelation,
          description: context.localizations.pauseOrCancelSubscription,
        ),
      ],
    );
  }
}

class SubscriptionBenefitCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const SubscriptionBenefitCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16.r),
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.1),
      child: Container(
        width: (1.sw - 52.w) / 2, // Responsive width for 2 columns
        decoration: BoxDecoration(
          color: AppColors.backgroundprimary,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 44.w,
                height: 44.h,
                decoration: BoxDecoration(
                  color: AppColors.mainColor.withAlpha(20),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: AppColors.mainColor, size: 24.sp),
              ),
              SizedBox(height: 12.h),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.textSecondary,
                  height: 1.3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

