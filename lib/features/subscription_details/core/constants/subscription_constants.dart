import 'package:flutter/material.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/subscription_details/domain/models/plan_benefit_model.dart';
import 'package:her_wallet/features/subscription_details/domain/models/subscription_details_data.dart';
import 'package:her_wallet/features/subscription_details/presentation/widgets/faq_section.dart';

class SubscriptionDetailsConstants {
  static const String productName = 'Skin Care Box';
  static const String imagePath = 'assets/images/skincare.jpg';
  static const String description =
      'Enjoy a monthly delivery of curated skincare products tailored to your needs. Each box includes a selection of high-quality items designed to nourish and rejuvenate your skin.';
  static const double rating = 4.8;

  static final List<SubscriptionPlanDetails> plans = [
    SubscriptionPlanDetails(
      name: 'Gold Plan',
      color: AppColors.yellowIcon,
      benefits: goldPlanBenefits,
    ),
    SubscriptionPlanDetails(
      name: 'Silver Plan',
      color: AppColors.greyIcon,
      benefits: silverPlanBenefits,
    ),
  ];

  static const List<PlanBenefitModel> goldPlanBenefits = [
    PlanBenefitModel(
      title: 'Face Moisturizer',
      subtitle: 'La Mer',
      description: 'deep hydration cream for dry skin',
      icon: Icons.favorite,
    ),
    PlanBenefitModel(
      title: 'Sunscreen',
      subtitle: 'Neutrogena',
      description: 'SPF 50+ for daily protection',
      icon: Icons.wb_sunny,
    ),
    PlanBenefitModel(
      title: 'Face Mask',
      subtitle: 'Garnier',
      description: 'Hydrating sheet mask for glowing skin',
      icon: Icons.face,
    ),
    PlanBenefitModel(
      title: 'Eye Cream',
      subtitle: 'Clinique',
      description: 'Reduces dark circles and puffiness',
      icon: Icons.visibility,
    ),
  ];

  static const List<PlanBenefitModel> silverPlanBenefits = [
    PlanBenefitModel(
      title: 'Face Moisturizer',
      subtitle: 'La Mer',
      description: 'deep hydration cream for dry skin',
      icon: Icons.favorite,
    ),
    PlanBenefitModel(
      title: 'Sunscreen',
      subtitle: 'Neutrogena',
      description: 'SPF 50+ for daily protection',
      icon: Icons.wb_sunny,
    ),
    PlanBenefitModel(
      title: 'Face Mask',
      subtitle: 'Garnier',
      description: 'Hydrating sheet mask for glowing skin',
      icon: Icons.face,
    ),
    PlanBenefitModel(
      title: 'Eye Cream',
      subtitle: 'Clinique',
      description: 'Reduces dark circles and puffiness',
      icon: Icons.visibility,
    ),
  ];

  static const List<FaqItem> faqItems = [
    FaqItem(
      question: 'Can I cancel my subscription any time?',
      answer:
          'You can cancel your subscription anytime by going to your account settings.',
    ),
    FaqItem(
      question: 'What if I receive a damaged product?',
      answer:
          'If you receive a damaged product, please contact our support team within 48 hours for a replacement.',
    ),
    FaqItem(
      question: 'How do I change my delivery address?',
      answer:
          'You can change your delivery address in your account settings before the next billing cycle.',
    ),
  ];

  static SubscriptionDetailsData get defaultData => SubscriptionDetailsData(
    productName: productName,
    imagePath: imagePath,
    description: description,
    rating: rating,
    plans: plans,
    faqItems: faqItems,
  );
}
