import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
import 'package:her_wallet/features/subscription/presentation/widgets/subscription_box_card.dart';

class SubscriptionBoxesScreen extends StatelessWidget {
  const SubscriptionBoxesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  JustNameAppBar(title: context.localizations.subscriptionBoxes),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(24.w),
              child: Text(
                context.localizations.mySubscriptions,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ),
            const SubscriptionBoxCard(),
            SizedBox(height: 20.h),
            const SubscriptionBoxCard(),
            SizedBox(height: 20.h),
            const SubscriptionBoxCard(),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }
}

