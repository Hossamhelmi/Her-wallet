import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import '../../../home/presentation/widgets/home_sections/title_and_view_all_section.dart';
import '../../../home/presentation/widgets/home_sections/tranactions_raw_section.dart';

class TransactionsSection extends StatelessWidget {
  const TransactionsSection({super.key});

  static const List<Map<String, dynamic>> _transactionItems = [
    {
      'backgroundColor': AppColors.greenIcon,
      'title': 'Transaction received',
      'date': 'June 12, 09:45 AM',
      'amount': '+ EGP 1990.00',
      'from': 'From: Ahmed Ali',
      'imagePath': 'money-receive',
    },
    {
      'backgroundColor': AppColors.redIcon,
      'title': 'Payment sent',
      'date': 'June 11, 02:15 PM',
      'amount': '- EGP 500.00',
      'from': 'To: Fatma Hassan',
      'imagePath': 'money-send',
    },
    {
      'backgroundColor': AppColors.greenIcon,
      'title': 'Service payment',
      'date': 'June 10, 11:00 AM',
      'amount': '+ EGP 250.00',
      'from': 'To: Service Provider',
      'imagePath': 'money-receive',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
           TitleViewAllSection(title: context.localizations.recentTransactions,
            onViewAllPressed: () {
              Navigator.pushNamed(context, AppRoutes.recentTransactions);
            },
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
                child: Column(
                  children: buildTransactionItems(_transactionItems),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> buildTransactionItems(List<Map<String, dynamic>> transactions) {
  final items = <Widget>[];

  for (int i = 0; i < transactions.length; i++) {
    final transaction = transactions[i];

    items.add(
      TransactionsRawSection(
        backgroundColor: (transaction['backgroundColor'] as Color).withAlpha(
          50,
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
        Container(height: 1.h, color: AppColors.greyPrimary.withOpacity(0.2)),
      );
    }
  }

  return items;
}

