import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../widgets/search_filter_section.dart';
import '../widgets/transactions_list_section.dart';

// ignore: must_be_immutable
class RecentTransactionsScreen extends StatefulWidget {
 late String selectedType;
   RecentTransactionsScreen({super.key});

  static const List<Map<String, dynamic>> transactionItems = [
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
    {
      'backgroundColor': AppColors.redIcon,
      'title': 'Payment sent',
      'date': 'June 11, 02:15 PM',
      'amount': '- EGP 500.00',
      'from': 'To: Fatma Hassan',
      'imagePath': 'money-send',
    },
    {
      'backgroundColor': AppColors.redIcon,
      'title': 'Payment sent',
      'date': 'June 11, 02:15 PM',
      'amount': '- EGP 500.00',
      'from': 'To: Fatma Hassan',
      'imagePath': 'money-send',
    },
  ];

  @override
  State<RecentTransactionsScreen> createState() =>
      _RecentTransactionsScreenState();
}

class _RecentTransactionsScreenState extends State<RecentTransactionsScreen> {
  List<Map<String, dynamic>> _filteredTransactions = [];

  @override
  void initState() {
    super.initState();
    _filteredTransactions = List.from(
      RecentTransactionsScreen.transactionItems,
    );
  }

  void _onFilterChanged(String type) {
    setState(() {
      widget.selectedType = type;
      _filteredTransactions = _filterTransactions(type);
    });
  }

  List<Map<String, dynamic>> _filterTransactions(String type) {
    if (type == context.localizations.all) {
      return List.from(RecentTransactionsScreen.transactionItems);
    } else if (type == context.localizations.incoming) {
      return RecentTransactionsScreen.transactionItems
          .where((item) => item['amount'].toString().startsWith('+'))
          .toList();
    } else if (type == context.localizations.outgoing) {
      return RecentTransactionsScreen.transactionItems
          .where((item) => item['amount'].toString().startsWith('-'))
          .toList();
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    widget.selectedType = context.localizations.all;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        centerTitle: false,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(bottom: 4.h),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 20.sp,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text(
          context.localizations.recentTransactions,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchFilterSection(
              isTransaction: true,
              hintText: context.localizations.searchInYourTransactions,
              selectedType: widget.selectedType,
              onFilterChanged: _onFilterChanged,
            ),
            SizedBox(height: 16.h),
            TransactionsListSection(transactions: _filteredTransactions),
          ],
        ),
      ),
    );
  }
}
