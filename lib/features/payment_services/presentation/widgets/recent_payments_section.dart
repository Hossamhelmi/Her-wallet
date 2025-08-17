import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/features/home/presentation/widgets/home_sections/title_and_view_all_section.dart';
import 'package:her_wallet/features/payment_services/presentation/widgets/recent_payment_row.dart';

class RecentPaymentsSection extends StatelessWidget {
  const RecentPaymentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleViewAllSection(
          title: context.localizations.recentPayments,
          onViewAllPressed:
              () => Navigator.pushNamed(context, AppRoutes.recentPayments),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
