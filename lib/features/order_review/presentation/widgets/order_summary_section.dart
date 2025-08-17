import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/shadowed_container.dart';
import 'package:her_wallet/features/home/presentation/widgets/cards/detail_row_card.dart';

class OrderSummarySection extends StatelessWidget {
  const OrderSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.localizations.orderSummary,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.h),
          DetailRowCard(
            label: context.localizations.boxPrice,
            value: context.localizations.orderTotalAmount,
            valueColor: AppColors.mainColor,
            valueFontSize: 14.sp,
          ),
          const Divider(height: 1),
          DetailRowCard(
            label: context.localizations.tax,
            value: context.localizations.taxAmount,
            valueColor: AppColors.textPrimary,
            valueFontSize: 14.sp,
          ),
          const Divider(height: 1),
          DetailRowCard(
            label: context.localizations.deliveryFees,
            value: context.localizations.free,
            valueColor: AppColors.mainColor,
            valueFontSize: 14.sp,
          ),
          const Divider(height: 1),
          DetailRowCard(
            label: context.localizations.total,
            value: context.localizations.orderTotalAmount,
            valueColor: AppColors.mainColor,
            valueFontSize: 16.sp,
          ),
        ],
      ),
    );
  }
}

