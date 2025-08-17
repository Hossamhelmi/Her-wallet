import 'package:flutter/material.dart';
import 'package:her_wallet/features/subscription_details/domain/models/plan_benefit_model.dart';
import 'package:her_wallet/features/subscription_details/presentation/widgets/faq_section.dart';

class SubscriptionDetailsData {
  final String productName;
  final String imagePath;
  final String description;
  final double rating;
  final List<SubscriptionPlanDetails> plans;
  final List<FaqItem> faqItems;

  const SubscriptionDetailsData({
    required this.productName,
    required this.imagePath,
    required this.description,
    required this.rating,
    required this.plans,
    required this.faqItems,
  });
}

class SubscriptionPlanDetails {
  final String name;
  final Color color;
  final List<PlanBenefitModel> benefits;

  const SubscriptionPlanDetails({
    required this.name,
    required this.color,
    required this.benefits,
  });
}
