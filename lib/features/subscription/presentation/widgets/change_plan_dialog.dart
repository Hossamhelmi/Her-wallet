import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/subscription_plans_section.dart';
import 'package:her_wallet/features/subscription/presentation/cubits/subscription_cubit.dart';
import 'package:her_wallet/features/subscription/presentation/cubits/subscription_state.dart';

class ChangePlanDialog extends StatelessWidget {
  const ChangePlanDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionCubit, SubscriptionState>(
      builder: (context, state) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(8.w),
          insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              const Divider(),
              _buildPlansSection(context, state),
              SizedBox(height: 4.h),
              _buildActionButtons(context),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        Text(
          context.localizations.changePlan,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        const Spacer(),
        IconButton(
          icon: Icon(Icons.close, color: AppColors.textPrimary, size: 16.sp),
          onPressed: () => Navigator.of(context).pop(),
          padding: EdgeInsets.all(4.w),
        ),
      ],
    );
  }

  Widget _buildPlansSection(BuildContext context, SubscriptionState state) {
    return SubscriptionPlansSection(
      selectedPlan: context.read<SubscriptionCubit>().state.selectedPlan,
      onPlanSelected: (plan) {
        context.read<SubscriptionCubit>().changePlan(plan);
      },
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              // Handle plan change with selectedPlan
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.mainColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Text(
              context.localizations.saveChanges,
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: AppColors.textPrimary,
              side: BorderSide(color: AppColors.grey200, width: 1.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              context.localizations.cancel,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
