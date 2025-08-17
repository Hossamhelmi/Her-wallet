import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/features/home/presentation/widgets/home_sections/title_and_view_all_section.dart';
import 'package:her_wallet/features/subscription/presentation/widgets/subscription_box_card.dart';
import 'package:her_wallet/features/subscription/presentation/widgets/explore_boxes_section.dart';
import 'package:her_wallet/features/subscription/presentation/widgets/how_it_works_section.dart';
import 'package:her_wallet/features/subscription/presentation/widgets/subscription_benefits_section.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 2.h),
          TitleViewAllSection(
            title: context.localizations.myBoxes,
            onViewAllPressed: () {
              // Navigate to view all boxes
              Navigator.pushNamed(context, AppRoutes.subscriptionBoxes);
            },
          ),
          const SubscriptionBoxCard(),
          SizedBox(height: 15.h),
          const ExploreBoxesSection(),
          SizedBox(height: 15.h),
          const HowItWorksSection(),
          SizedBox(height: 2.h),
          const SubscriptionBenefitsSection(),
          SizedBox(height: 2.h),
        ],
      ),
    );
  }
}
