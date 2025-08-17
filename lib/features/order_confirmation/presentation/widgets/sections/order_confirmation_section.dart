import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import '../components/order_details_row.dart';

class OrderConfirmationSection extends StatelessWidget {
  const OrderConfirmationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(Icons.check_circle, color: Colors.green, size: 80.r),
          SizedBox(height: 20.h),
          Text(
            context.localizations.orderPlaced,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            context.localizations.orderProcessing,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 12.sp,
              height: 1.5,
            ),
          ),
          SizedBox(height: 10.h),
          _buildOrderDetails(context),
        ],
      ),
    );
  }

  Widget _buildOrderDetails(
    BuildContext context,
  ) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.backgroundSecondary,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          OrderDetailsRow(label: context.localizations.orderNumber, value: '#123456'),
          OrderDetailsRow(label: context.localizations.orderDate, value: 'June 1, 2023'),
          OrderDetailsRow(
            label: context.localizations.amount,
            value: 'EGP 500',
            valueColor: AppColors.mainColor,
          ),
        ],
      ),
    );
  }
}
