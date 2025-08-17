import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
import '../widgets/widgets.dart';

class OrderConfirmationScreen extends StatelessWidget {
  const OrderConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.orderConfirmation),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 2.h),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OrderProgressSection(),
                    SizedBox(height: 8.h),
                    OrderConfirmationSection(),
                    SizedBox(height: 8.h),
                  ],
                ),
              ),
            ),
          ),
          OrderActionsSection(
            onTrackOrder: () => Navigator.of(context).pop(),
            onBackToHome: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

