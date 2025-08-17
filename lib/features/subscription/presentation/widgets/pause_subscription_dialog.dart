import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/complete_subscription/domain/models/subscription_models.dart';
import 'package:her_wallet/features/subscription/presentation/cubits/subscription_cubit.dart';
import 'package:her_wallet/features/subscription/presentation/cubits/subscription_state.dart';

class PauseSubscriptionDialog extends StatelessWidget {
  const PauseSubscriptionDialog({super.key});
  List<PausePlan> _buildPausePlan(BuildContext context) {
    return [
      PausePlan(
        title: context.localizations.oneMonth,
        duration: context.localizations.thirtyDays,
      ),
      PausePlan(
        title: context.localizations.threeMonths,
        duration: context.localizations.ninetyDays,
      ),
      PausePlan(
        title: context.localizations.sixMonths,
        duration: context.localizations.oneHundredEightyDays,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final allPlans = _buildPausePlan(context);
    return AlertDialog(
      contentPadding: EdgeInsets.all(16.w),
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.localizations.pauseSubscription,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: AppColors.textPrimary,
                  size: 18.sp,
                ),
                onPressed: () => Navigator.of(context).pop(),
                padding: EdgeInsets.all(4.w),
                constraints: BoxConstraints(minWidth: 24.w, minHeight: 24.h),
              ),
            ],
          ),
          Text(
            context.localizations.selectPreferredPauseDuration,
            style: TextStyle(fontSize: 12.sp, color: AppColors.textSecondary),
          ),
          SizedBox(height: 2.h),
          Divider(color: AppColors.grey200),
          SizedBox(height: 2.h),
          Text(
            context.localizations.pauseDuration,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
                allPlans.map((plan) {
                  return BlocBuilder<SubscriptionCubit, SubscriptionState>(
                    builder: (context, state) {
                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: GestureDetector(
                            onTap: () {
                              context
                                  .read<SubscriptionCubit>()
                                  .pauseSubscription(plan.title);
                            },
                            child: Container(
                              padding: EdgeInsets.all(12.w),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      context
                                                  .read<SubscriptionCubit>()
                                                  .state
                                                  .selectedPauseDuration ==
                                              plan.title
                                          ? AppColors.mainColor
                                          : AppColors.textTertiary,
                                  width:
                                      context
                                                  .read<SubscriptionCubit>()
                                                  .state
                                                  .selectedPauseDuration ==
                                              plan.title
                                          ? 2.w
                                          : 1.w,
                                ),
                                borderRadius: BorderRadius.circular(12.r),
                                color:
                                    context
                                                .read<SubscriptionCubit>()
                                                .state
                                                .selectedPauseDuration ==
                                            plan.title
                                        ? AppColors.mainColor.withAlpha(20)
                                        : Colors.transparent,
                              ),
                              child: Column(
                                children: [
                                  Radio<String>(
                                    value: plan.title,
                                    groupValue:
                                        context
                                            .read<SubscriptionCubit>()
                                            .state
                                            .selectedPauseDuration,
                                    onChanged: (value) {
                                      context
                                          .read<SubscriptionCubit>()
                                          .pauseSubscription(value!);
                                    },
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    activeColor: AppColors.mainColor,
                                  ),
                                  SizedBox(height: 2.h),
                                  Text(
                                    plan.title,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.textPrimary,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 2.h),
                                  Text(
                                    plan.duration,
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: AppColors.textTertiary,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
          ),
          SizedBox(height: 4.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: AppColors.greenIcon.withAlpha(50),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.info, color: AppColors.greenIcon, size: 16.sp),
                    SizedBox(width: 8.w),
                    Text(
                      context.localizations.importantNotes,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Text(
                  context.localizations.subscriptionPausedForDuration,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  context.localizations.resumeSubscriptionAnytime,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),

          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed:
                      context
                                  .read<SubscriptionCubit>()
                                  .state
                                  .selectedPauseDuration !=
                              null
                          ? () {
                            // Handle pause confirmation with selectedPauseDuration
                            Navigator.of(context).pop();
                          }
                          : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        context
                                    .read<SubscriptionCubit>()
                                    .state
                                    .selectedPauseDuration !=
                                null
                            ? AppColors.mainColor
                            : AppColors.grey200,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    context.localizations.confirmPause,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
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
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
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
          ),
        ],
      ),
    );
  }
}
