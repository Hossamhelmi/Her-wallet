import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/payment_services/presentation/widgets/payment_services_header.dart';
import 'package:her_wallet/features/payment_services/presentation/widgets/payment_services_grid.dart';
import 'package:her_wallet/features/payment_services/presentation/widgets/recent_payments_section.dart';

class PaymentServicesScreen extends StatelessWidget {
  const PaymentServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        centerTitle: false,
        leading: Padding(
          padding: EdgeInsets.only(bottom: 5.h),
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
          context.localizations.paymentServices,
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
            PaymentServicesHeader(
              onSearchChanged: (value) {
                // Implement search functionality
              },
            ),
            SizedBox(height: 20.h),
            PaymentServicesGrid(),
            SizedBox(height: 15.h),
            RecentPaymentsSection(),
            SizedBox(height: 5.h),
          ],
        ),
      ),
    );
  }
}

