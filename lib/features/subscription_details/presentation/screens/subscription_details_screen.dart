import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/product_image_section.dart';
import 'package:her_wallet/features/subscription_details/core/constants/subscription_constants.dart';
import 'package:her_wallet/features/subscription_details/presentation/widgets/widgets.dart';

class SubscriptionDetailsScreen extends StatelessWidget {
  const SubscriptionDetailsScreen({super.key});

  void _handleSubscription(context) {
    // Handle subscription action
    Navigator.pushNamed(context, AppRoutes.completeSubscription);
  }

  @override
  Widget build(BuildContext context) {
    final data = SubscriptionDetailsConstants.defaultData;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          data.productName,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        backgroundColor: AppColors.background,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.textPrimary, size: 24.sp),
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.h),
              ProductImageSection(imagePath: data.imagePath),
              SizedBox(height: 8.h),
              ProductDescriptionText(description: data.description),
              SizedBox(height: 8.h),
              RatingSection(rating: data.rating),
              SizedBox(height: 8.h),
              Text(
                context.localizations.contentOfBox,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              SizedBox(height: 8.h),
              ...data.plans.map(
                (plan) => Column(
                  children: [
                    PlanBenefitsSection(
                      planName: plan.name,
                      planColor: plan.color,
                      benefits: plan.benefits,
                    ),
                    SizedBox(height: 8.h),
                  ],
                ),
              ),
              FaqSection(faqItems: data.faqItems),
              SubscribeButton(onPressed: () => _handleSubscription(context)),
              SizedBox(height: 8.h),
            ],
          ),
        ),
      ),
    );
  }
}

