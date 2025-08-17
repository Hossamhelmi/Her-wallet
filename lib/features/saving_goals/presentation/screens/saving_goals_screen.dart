import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
import 'package:her_wallet/features/home/presentation/widgets/home_sections/savings_section.dart';

class SavingGoalsScreen extends StatelessWidget {
  const SavingGoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.savingGoals),
      body: Column(
        children: [
          25.verticalSpace,
           SavingSection(
          title: context.localizations.myHusbandsBirthday,
          date: 'June 13, 2025',
          remaining: 'EGP 49,00',
          total: 'EGP 1500,00',
          progress: 300 / 500,
        ),
        SizedBox(height: 10.h),
        SavingSection(
          title: context.localizations.mothersDay,
          date: 'June 13, 2025',
          total: 'EGP 500.00',
          remaining: 'EGP 50',
          progress: 400 / 500,
        ),
          SizedBox(height: 10.h),
        SavingSection(
          title: context.localizations.mothersDay,
          date: 'June 13, 2025',
          total: 'EGP 500.00',
          remaining: 'EGP 50',
          progress: 400 / 500,
        ),
          SizedBox(height: 10.h),
        SavingSection(
          title: context.localizations.mothersDay,
          date: 'June 13, 2025',
          total: 'EGP 500.00',
          remaining: 'EGP 50',
          progress: 400 / 500,
        ),
        ],
      )
    );
  }
}
