import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../../../home/presentation/widgets/cards/detail_row_card.dart';

class TransactionDetailsSection extends StatelessWidget {
  const TransactionDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Material(
        borderRadius: BorderRadius.circular(12.r),
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.1),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.w),
                child: Text(
                  context.localizations.transactionDetails,
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              DetailRowCard(
                valueWeight: FontWeight.bold,
                label: context.localizations.amountToTopUp,
                value: 'EGP 500.00',
                valueColor: AppColors.mainColor,
                valueFontSize: 18.sp,
              ),
              Divider(height: 1.h),
              DetailRowCard(
                label: context.localizations.paymentMethod,
                value: context.localizations.bankCard,
                valueColor: Colors.black,
                valueFontSize: 15.sp,
              ),
              Divider(height: 1.h),
              DetailRowCard(
                label: context.localizations.serviceFee,
                value: 'EGP 5.00',
                valueColor: AppColors.mainColor,
                valueFontSize: 15.sp,
              ),
              Divider(height: 1.h),
              DetailRowCard(
                label: context.localizations.total,
                value: 'EGP 505.00',
                valueColor: AppColors.mainColor,
                valueFontSize: 18.sp,
                labelWeight: FontWeight.w700,
                valueWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

