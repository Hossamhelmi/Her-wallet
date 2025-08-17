import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../../../home/presentation/widgets/cards/transaction_card.dart';

class TransactionsListSection extends StatelessWidget {
  final List<Map<String, dynamic>> transactions;

  const TransactionsListSection({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          child: Text(
            context.localizations.transactionList,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Material(
            borderRadius: BorderRadius.circular(20.r),
            elevation: 2,
            shadowColor: Colors.black.withOpacity(0.1),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
              ),
              child:
                  transactions.isEmpty
                      ? _buildEmptyState(context)
                      : Column(children: _buildTransactionItems()),
            ),
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40.w),
      child: Center(
        child: Column(
          children: [
            Icon(
              Icons.receipt_long_outlined,
              size: 50.sp,
              color: AppColors.greyIcon,
            ),
            SizedBox(height: 16.h),
            Text(
              context.localizations.noTransactionsFound,
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTransactionItems() {
    final items = <Widget>[];

    for (int i = 0; i < transactions.length; i++) {
      final transaction = transactions[i];

      items.add(
        TransactionCard(
          backgroundColor: (transaction['backgroundColor'] as Color).withAlpha(
            51,
          ),
          iconColor: transaction['backgroundColor'],
          title: transaction['title'],
          date: transaction['date'],
          amount: transaction['amount'],
          from: transaction['from'],
          imagePath: transaction['imagePath'],
        ),
      );

      if (i < transactions.length - 1) {
        items.add(
          Container(
            height: 1.h,
            color: AppColors.greyPrimary.withOpacity(0.3),
            margin: EdgeInsets.symmetric(horizontal: 16.w),
          ),
        );
      }
    }

    return items;
  }
}

