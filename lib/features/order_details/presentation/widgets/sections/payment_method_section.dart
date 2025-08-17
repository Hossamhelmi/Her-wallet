import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../components/payment_method_card.dart';

class PaymentMethodSection extends StatelessWidget {
  final String paymentMethod;
  final IconData icon;

  const PaymentMethodSection({
    super.key,
    required this.paymentMethod,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Method',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 8.h),
        PaymentMethodCard(icon: icon, method: paymentMethod),
      ],
    );
  }
}
