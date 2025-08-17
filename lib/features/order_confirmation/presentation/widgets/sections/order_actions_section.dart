import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import '../components/order_action_button.dart';

class OrderActionsSection extends StatelessWidget {
  final VoidCallback onTrackOrder;
  final VoidCallback onBackToHome;

  const OrderActionsSection({
    super.key,
    required this.onTrackOrder,
    required this.onBackToHome,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          OrderActionButton(
            text: context.localizations.trackOrder,
            onPressed: onTrackOrder,
            isPrimary: true,
          ),
          SizedBox(height: 8.h),
          OrderActionButton(
            text: context.localizations.backToHome,
            onPressed: onBackToHome,
            isPrimary: false,
          ),
          SizedBox(height: 12.h),
        ],
      ),
    );
  }
}
