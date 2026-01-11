import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'title_and_view_all_section.dart';

class SavingsSection extends StatelessWidget {
  const SavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleViewAllSection(
          title: context.localizations.savingGoals,
          onViewAllPressed:
              () => Navigator.pushNamed(context, AppRoutes.savingGoals),
        ),
        SavingSection(
          title: context.localizations.myHusbandsBirthday,
          date: 'June 13, 2025',
          remaining: 'EGP 49,00',
          total: 'EGP 1500,00',
          progress: 300 / 500,
        ),
        SizedBox(height: 5.h),
        SavingSection(
          title: context.localizations.mothersDay,
          date: 'June 13, 2025',
          total: 'EGP 500.00',
          remaining: 'EGP 50',
          progress: 400 / 500,
        ),
      ],
    );
  }
}

class SavingSection extends StatelessWidget {
  final String title;
  final String date;
  final String total;
  final String remaining;
  final double progress;

  const SavingSection({
    super.key,
    required this.title,
    required this.date,
    required this.total,
    required this.remaining,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.savingGoalsPayment, arguments: {
          'title': title,
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 18.w),
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(20.r),
          shadowColor: AppColors.backgroundSecondary,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            constraints: BoxConstraints(minHeight: 70.h),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      total,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.appBar,
                      ),
                    ),
      
                    Flexible(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: remaining,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColors.appBar,
                              ),
                            ),
                            TextSpan(
                              text: ' ${context.localizations.remaining} $total',
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w300,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                LinearProgressIndicator(
                  backgroundColor: AppColors.grey200,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.appBar),
                  value: progress,
                  borderRadius: BorderRadius.circular(20.r),
                  minHeight: 6.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
