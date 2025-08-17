import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

enum PaymentMethodType { wallet, cashOnDelivery }

class PaymentMethodSection extends StatefulWidget {
  final Function(PaymentMethodType)? onPaymentMethodChanged;

  const PaymentMethodSection({super.key, this.onPaymentMethodChanged});

  @override
  State<PaymentMethodSection> createState() => _PaymentMethodSectionState();
}

class _PaymentMethodSectionState extends State<PaymentMethodSection> {
  PaymentMethodType _selectedPaymentMethod = PaymentMethodType.wallet;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader(),
          Divider(color: AppColors.grey200),
          SizedBox(height: 4.h),
          _buildWalletOption(),
          SizedBox(height: 4.h),
          _buildCashOnDeliveryOption(),
          _buildSecurityInfo(),
        ],
      ),
    );
  }

  Widget _buildSectionHeader() {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, top: 16.h, right: 16.w),
      child: Text(
        context.localizations.paymentMethod,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  Widget _buildWalletOption() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color:
                _selectedPaymentMethod == PaymentMethodType.wallet
                    ? AppColors.mainColor
                    : AppColors.iconGreyTertiary,
            width:
                _selectedPaymentMethod == PaymentMethodType.wallet ? 2.w : 1.w,
          ),
        ),
        child: Row(
          children: [
            Radio<PaymentMethodType>(
              value: PaymentMethodType.wallet,
              groupValue: _selectedPaymentMethod,
              onChanged: (PaymentMethodType? value) {
                if (value != null) {
                  setState(() {
                    _selectedPaymentMethod = value;
                  });
                  widget.onPaymentMethodChanged?.call(value);
                }
              },
              activeColor: AppColors.mainColor,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localizations.myWallet,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    context.localizations.walletBalance,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8.w),
            Icon(
              Icons.wallet_outlined,
              color: AppColors.iconGreyTertiary,
              size: 32.sp,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCashOnDeliveryOption() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color:
                _selectedPaymentMethod == PaymentMethodType.cashOnDelivery
                    ? AppColors.mainColor
                    : AppColors.iconGreyTertiary,
            width:
                _selectedPaymentMethod == PaymentMethodType.cashOnDelivery
                    ? 2.w
                    : 1.w,
          ),
        ),
        child: Row(
          children: [
            Radio<PaymentMethodType>(
              value: PaymentMethodType.cashOnDelivery,
              groupValue: _selectedPaymentMethod,
              onChanged: (PaymentMethodType? value) {
                if (value != null) {
                  setState(() {
                    _selectedPaymentMethod = value;
                  });
                  widget.onPaymentMethodChanged?.call(value);
                }
              },
              activeColor: AppColors.mainColor,
            ),
            Expanded(
              child: Text(
                context.localizations.cashOnDelivery,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            SizedBox(width: 8.w),
            Icon(
              Icons.money_outlined,
              color: AppColors.iconGreyTertiary,
              size: 32.sp,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSecurityInfo() {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColors.greenIcon.withAlpha(25),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.info_outline, color: AppColors.greenIcon, size: 20.sp),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                context.localizations.secureTransaction,
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

