import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class SubscriptionPlanCard extends StatelessWidget {
  final String planName;
  final String price;
  final String? selectedPlan;
  final ValueChanged<String> onPlanSelected;

  const SubscriptionPlanCard({
    super.key,
    required this.planName,
    required this.price,
    required this.selectedPlan,
    required this.onPlanSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedPlan == planName;

    return GestureDetector(
      onTap: () => onPlanSelected(planName),
      child: Container(
        padding: EdgeInsets.all(5.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.textTertiary,
            width: isSelected ? 2.w : 1.w,
          ),
          borderRadius: BorderRadius.circular(10.r),
          color: isSelected ? AppColors.primary.withOpacity(0.1) : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Radio<String>(
              value: planName,
              groupValue: selectedPlan,
              onChanged: (value) {
                if (value != null) {
                  onPlanSelected(value);
                }
              },
              activeColor: AppColors.primary,
            ),
            Text(
              planName,
              style: TextStyle(
                fontSize: 12.sp,
                color: isSelected ? AppColors.primary : AppColors.textTertiary,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 10.sp,
                color: isSelected ? AppColors.primary : AppColors.textTertiary,
                fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
