import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/home/presentation/widgets/cards/detail_row_card.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/shadowed_container.dart';

class OrderSummarySection extends StatelessWidget {
  final String boxPrice;
  final String subscriptionPeriod;
  final String deliveryFees;
  final String total;

  const OrderSummarySection({
    super.key,
    required this.boxPrice,
    required this.subscriptionPeriod,
    required this.deliveryFees,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            context.localizations.orderSummary,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          DetailRowCard(
            label: context.localizations.boxPrice,
            value: boxPrice,
            valueColor: AppColors.mainColor,
            valueFontSize: 18,
          ),
          const Divider(height: 1),
          DetailRowCard(
            label: context.localizations.subscriptionPeriod,
            value: subscriptionPeriod,
            valueColor: AppColors.textPrimary,
            valueFontSize: 18,
          ),
          const Divider(height: 1),
          DetailRowCard(
            label: context.localizations.deliveryFees,
            value: deliveryFees,
            valueColor: AppColors.mainColor,
            valueFontSize: 18,
          ),
          const Divider(height: 1),
          DetailRowCard(
            label: context.localizations.total,
            value: total,
            valueColor: AppColors.mainColor,
            valueFontSize: 18,
          ),
        ],
      ),
    );
  }
}

