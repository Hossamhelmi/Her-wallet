import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/subscription_details/domain/models/plan_benefit_model.dart';
import 'package:her_wallet/features/subscription_details/presentation/widgets/plan_benefit_item.dart';

class PlanBenefitsSection extends StatelessWidget {
  final String planName;
  final Color planColor;
  final List<PlanBenefitModel> benefits;

  const PlanBenefitsSection({
    super.key,
    required this.planName,
    required this.planColor,
    required this.benefits,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 8.w),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
              decoration: BoxDecoration(
                color: planColor.withAlpha(180),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ),
              ),
              child: Text(
                planName,
                style: TextStyle(
                  color: AppColors.backgroundSecondary,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(left:8.w,right: 8.w, top: 8.h),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: planColor.withAlpha(180), width: 2.w),
          ),
          child: Column(
            children:
                benefits.map((benefit) {
                  return PlanBenefitItem(
                    title: benefit.title,
                    subtitle: benefit.subtitle,
                    description: benefit.description,
                    icon: benefit.icon,
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }
}
