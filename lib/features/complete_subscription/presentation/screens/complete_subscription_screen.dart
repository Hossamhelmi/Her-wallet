import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/complete_subscription/domain/models/subscription_models.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/delivery_address_section.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/order_summary_section.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/product_description_section.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/product_image_section.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/subscribe_bottom_section.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/subscription_plans_section.dart';

class CompleteSubscriptionScreen extends StatefulWidget {
  const CompleteSubscriptionScreen({super.key});

  @override
  State<CompleteSubscriptionScreen> createState() =>
      _CompleteSubscriptionScreenState();
}

class _CompleteSubscriptionScreenState
    extends State<CompleteSubscriptionScreen> {
  String? selectedPlan;
  bool isTermsAccepted = false;

  String _getSelectedPlanPrice(BuildContext context) {
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
    final plan = allPlans.firstWhere(
      (plan) => plan.name == selectedPlan,
      orElse: () => bronze,
    );
    return '${context.localizations.egp} ${plan.monthlyAmount.toStringAsFixed(2)}';
  }

  void _handleSubscribe() {
    if (selectedPlan != null && isTermsAccepted) {
      // Handle subscribe action
    }
  }

  @override
  Widget build(BuildContext context) {
    selectedPlan = context.localizations.gold;
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations.completeSubscription),
        backgroundColor: AppColors.background,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductImageSection(
                imagePath: 'assets/images/skincare.jpg',
              ),
              SizedBox(height: 10.h),
              ProductDescriptionSection(
                title: context.localizations.skinCareBoxTitle,
                description: context.localizations.skinCareBoxDescription,
              ),
              SizedBox(height: 10.h),
              SubscriptionPlansSection(
                selectedPlan: selectedPlan,
                onPlanSelected: (plan) {
                  setState(() {
                    selectedPlan = plan;
                  });
                },
              ),
              SizedBox(height: 10.h),
              const DeliveryAddressSection(),
              SizedBox(height: 10.h),
              OrderSummarySection(
                boxPrice: _getSelectedPlanPrice(context),
                subscriptionPeriod: context.localizations.monthly,
                deliveryFees: context.localizations.free,
                total: _getSelectedPlanPrice(context),
              ),
              SizedBox(height: 10.h),
              SubscribeBottomSection(
                isTermsAccepted: isTermsAccepted,
                onTermsChanged: (accepted) {
                  setState(() {
                    isTermsAccepted = accepted;
                  });
                },
                onSubscribePressed: _handleSubscribe,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
