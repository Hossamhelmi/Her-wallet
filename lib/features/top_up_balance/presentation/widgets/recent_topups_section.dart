import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../../../home/presentation/widgets/cards/top_up_transaction_card.dart';

class RecentTopUpsSection extends StatelessWidget {
  const RecentTopUpsSection({super.key});


  @override
  Widget build(BuildContext context) {
 
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Text(
            context.localizations.recentTopUps,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w,),
          child: Material(
            borderRadius: BorderRadius.circular(20.r),
            elevation: 2,
            shadowColor: Colors.black.withOpacity(0.1),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
              ),
              child: Column(children: _buildTopUpList(context)),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildTopUpList(BuildContext context) {
       List<Map<String, dynamic>> recentTopUps = [
    {
      'title': context.localizations.toppedUpViaBankCard,
      'date': 'June 12, 2025',
      'amount': '+ EGP 500',
    },
    {
      'title': context.localizations.toppedUpViaBankAccount,
      'date': 'June 10, 2025',
      'amount': '+ EGP 300',
    },
    {
      'title': context.localizations.toppedUpViaWallet,
      'date': 'June 08, 2025',
      'amount': '+ EGP 750',
    },
  ];
    final items = <Widget>[];

    for (int i = 0; i < recentTopUps.length; i++) {
      final topUp = recentTopUps[i];

      items.add(
        TopUpTransactionCard(
          title: topUp['title'],
          date: topUp['date'],
          amount: topUp['amount'],
        ),
      );

      // Add divider between items (except for the last item)
      if (i < recentTopUps.length - 1) {
        items.add(
          Divider()
        );
      }
    }

    return items;
  }
}

