import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/home_sections/balance_section.dart';
import '../widgets/home_sections/reminder_section.dart';
import '../widgets/home_sections/savings_section.dart';
import '../widgets/home_sections/add_goal_section.dart';
import '../widgets/home_sections/quick_access_section.dart';
import '../../../recent_transactions/presentation/widgets/transactions_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BalanceSection(),
          SavingsSection(),
          AddGoalSection(),
          ReminderSection(),
          QuickAccessSection(),
          TransactionsSection(),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
