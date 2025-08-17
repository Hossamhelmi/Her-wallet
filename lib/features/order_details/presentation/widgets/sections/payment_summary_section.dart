import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class PaymentSummarySection extends StatelessWidget {
  final String subtotal;
  final String shippingFee;
  final String vat;
  final String totalAmount;

  const PaymentSummarySection({
    super.key,
    required this.subtotal,
    required this.shippingFee,
    required this.vat,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Summary',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 8.h),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: AppColors.grey200,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            children: [
              _buildSummaryRow('Subtotal', subtotal),
              SizedBox(height: 8.h),
              _buildSummaryRow('Shipping fee', shippingFee),
              SizedBox(height: 8.h),
              _buildSummaryRow('Vat (14%)', vat),
              SizedBox(height: 12.h),
              Divider(
                color: AppColors.textSecondary.withOpacity(0.3),
                thickness: 1.h,
              ),
              SizedBox(height: 12.h),
              _buildSummaryRow('Total Amount', totalAmount, isTotal: true),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSummaryRow(String label, String value, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$label:',
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.textSecondary,
            fontWeight: isTotal ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14.sp,
            color: isTotal ? AppColors.mainColor : AppColors.textPrimary,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
