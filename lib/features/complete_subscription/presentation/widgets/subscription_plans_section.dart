import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/features/complete_subscription/domain/models/subscription_models.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/shadowed_container.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/subscription_plan_card.dart';

class SubscriptionPlansSection extends StatelessWidget {
  final String? selectedPlan;
  final ValueChanged<String> onPlanSelected;

  const SubscriptionPlansSection({
    super.key,
    required this.selectedPlan,
    required this.onPlanSelected,
  });

  @override
  Widget build(BuildContext context) {
    SubscriptionPlan gold = SubscriptionPlan(
      name: context.localizations.gold,
      price: context.localizations.goldPlanPrice,
      monthlyAmount: 199.00,
    );

    SubscriptionPlan silver = SubscriptionPlan(
      name: context.localizations.silver,
      price: context.localizations.silverPlanPrice,
      monthlyAmount: 179.00,
    );

    SubscriptionPlan bronze = SubscriptionPlan(
      name: context.localizations.bronze,
      price: context.localizations.bronzePlanPrice,
      monthlyAmount: 159.00,
    );

    List<SubscriptionPlan> allPlans = [gold, silver, bronze];
    return ShadowedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.localizations.subscriptionPlans,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
                allPlans.map((plan) {
                  return Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: SubscriptionPlanCard(
                        planName: plan.name,
                        price: plan.price,
                        selectedPlan: selectedPlan,
                        onPlanSelected: onPlanSelected,
                      ),
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}

