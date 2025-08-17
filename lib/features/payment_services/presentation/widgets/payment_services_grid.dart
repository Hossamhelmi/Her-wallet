import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/features/payment_services/presentation/widgets/payment_card.dart';
import 'package:her_wallet/features/payment_services/presentation/widgets/payment_service_dialog.dart';
import 'package:her_wallet/features/payment_services/presentation/widgets/non_provider_dialog.dart';


class PaymentServicesGrid extends StatelessWidget {
  const PaymentServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.localizations.chooseServiceToPay,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          Wrap(
            spacing: 12.w,
            runSpacing: 16.h,
            children: [
              PaymentCard(
                icon: Icons.phone_outlined,
                title: context.localizations.telecomInternetBills,
                onTap:
                    () => _showPaymentDialog(
                      context,
                      context.localizations.telecomInternetBills,
                      serviceTypes: [
                        context.localizations.internet,
                        context.localizations.mobile,
                        context.localizations.landline,
                      ],
                    ),
              ),
              PaymentCard(
                icon: Icons.phone_android_outlined,
                title: context.localizations.mobileInternetTopUp,
                onTap:
                    () => _showPaymentDialog(
                      context,
                      context.localizations.mobileInternetTopUp,
                      serviceTypes: [context.localizations.internet, context.localizations.mobile],
                      hasAmountFields: true,
                    ),
              ),
              PaymentCard(
                icon: Icons.lightbulb_outline,
                title: context.localizations.electricity,
                onTap: () => _showElectricityDialog(context),
              ),
              PaymentCard(
                icon: Icons.fire_extinguisher_outlined,
                title: context.localizations.gas,
                onTap: () => _showGasDialog(context),
              ),
              PaymentCard(
                icon: Icons.water_outlined,
                title: context.localizations.waterBills,
                onTap: () => _showWaterDialog(context),
              ),
              PaymentCard(
                icon: Icons.credit_card_outlined,
                title: context.localizations.installmentsServices,
                onTap: () => _showInstallmentsDialog(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showPaymentDialog(
    BuildContext context,
    String title, {
    List<String> serviceTypes = const [],
    bool hasAmountFields = false,
  }) {
    showDialog(
      context: context,
      builder:
          (context) => PaymentServiceDialog(
            title: title,
            serviceTypes: serviceTypes,
            hasAmountFields: hasAmountFields,
          ),
    );
  }

  void _showElectricityDialog(BuildContext context) {
    showDialog(context: context, builder: (context) => NonProviderBillDialog(
      isInstallment: false,
      title: context.localizations.electricity,
    ));
  }

  void _showGasDialog(BuildContext context) {
    showDialog(context: context, builder: (context) => NonProviderBillDialog(
      isInstallment: false,
      title: context.localizations.gas,
    ));
  }

  void _showWaterDialog(BuildContext context) {
    showDialog(context: context, builder: (context) => NonProviderBillDialog(
      isInstallment: false,
      title: context.localizations.waterBills,
    ));
  }

  void _showInstallmentsDialog(BuildContext context) {
    showDialog(context: context, builder: (context) => NonProviderBillDialog(
      isInstallment: true,
      title: context.localizations.installmentsServices,
    ));
  }
}

