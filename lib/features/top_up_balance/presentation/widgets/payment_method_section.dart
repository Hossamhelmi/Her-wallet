import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../../../home/presentation/widgets/cards/payment_method_card.dart';

class PaymentMethodSection extends StatelessWidget {
  final String selectedMethod;
  final ValueChanged<String> onMethodSelected;

  const PaymentMethodSection({
    super.key,
    required this.selectedMethod,
    required this.onMethodSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 12.h),
          child: Text(
            context.localizations.chooseTopUpMethod,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PaymentMethodCard(
                id: 'bank_card',
                title: context.localizations.bankCard,
                icon: Icons.credit_card,
                isSelected: selectedMethod == 'bank_card',
                onTap: () => onMethodSelected('bank_card'),
              ),
              PaymentMethodCard(
                id: 'bank_account',
                title: context.localizations.bankAccount,
                icon: Icons.account_balance,
                isSelected: selectedMethod == 'bank_account',
                onTap: () => onMethodSelected('bank_account'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

