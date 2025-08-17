import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
import 'package:her_wallet/features/payment_services/presentation/widgets/recent_payment_row.dart';

class RecentPaymentsScreen extends StatelessWidget {
  const RecentPaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.recentPayments),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              RecentPaymentRow(
                title: 'Vodafone - Home Internet',
                date: 'June 12, 09:45 AM',
                amount: '${context.localizations.egp} 450',
                icon: Icons.phone_android,
                iconColor: AppColors.orangeIcon,
              ),
              Divider(height: 1.h, indent: 16.w, endIndent: 16.w),
              RecentPaymentRow(
                title: 'Water Bill - Monthly',
                date: 'June 10, 02:30 PM',
                amount: '${context.localizations.egp} 150',
                icon: Icons.lightbulb,
                iconColor: AppColors.blueIcon,
              ),
              Divider(height: 1.h, indent: 16.w, endIndent: 16.w),
              RecentPaymentRow(
                title: 'Electricity Bill',
                date: 'June 08, 11:15 AM',
                amount: '${context.localizations.egp} 300',
                icon: Icons.electric_bolt,
                iconColor: AppColors.yellowIcon,
              ),
              Divider(height: 1.h, indent: 16.w, endIndent: 16.w),
              RecentPaymentRow(
                title: 'Vodafone - Home Internet',
                date: 'June 12, 09:45 AM',
                amount: '${context.localizations.egp} 450',
                icon: Icons.phone_android,
                iconColor: AppColors.orangeIcon,
              ),
              Divider(height: 1.h, indent: 16.w, endIndent: 16.w),
              RecentPaymentRow(
                title: 'Water Bill - Monthly',
                date: 'June 10, 02:30 PM',
                amount: '${context.localizations.egp} 150',
                icon: Icons.lightbulb,
                iconColor: AppColors.blueIcon,
              ),
              Divider(height: 1.h, indent: 16.w, endIndent: 16.w),
              RecentPaymentRow(
                title: 'Electricity Bill',
                date: 'June 08, 11:15 AM',
                amount: '${context.localizations.egp} 300',
                icon: Icons.electric_bolt,
                iconColor: AppColors.yellowIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
