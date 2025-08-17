import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
import 'package:her_wallet/features/order_review/presentation/widgets/widgets.dart';

class OrderReviewScreen extends StatelessWidget {
  const OrderReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.orderReview),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(height: 8.h),
            SectionWrapper(child: OrderStatusSection()),
            SizedBox(height: 8.h),
            SectionWrapper(child: ProductsSection()),
            SizedBox(height: 8.h),
            SectionWrapper(child: OrderSummarySection()),
            SizedBox(height: 8.h),
            SectionWrapper(child: DiscountCouponSection()),
            SizedBox(height: 8.h),
            SectionWrapper(child: PaymentButton()),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}

