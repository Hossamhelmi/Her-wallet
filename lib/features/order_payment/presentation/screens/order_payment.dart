import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
import 'package:her_wallet/features/order_payment/presentation/widgets/widgets.dart';

class OrderPaymentScreen extends StatefulWidget {
  const OrderPaymentScreen({super.key});

  @override
  State<OrderPaymentScreen> createState() => _OrderPaymentScreenState();
}

class _OrderPaymentScreenState extends State<OrderPaymentScreen> {
  PaymentMethodType selectedPaymentMethod = PaymentMethodType.wallet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.orderPayment),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PaymentSectionWrapper(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: PaymentOrderStatusSection(),
            ),
            PaymentSectionWrapper(child: AddressSection()),
            SizedBox(height: 8.h),
            PaymentSectionWrapper(
              child: PaymentMethodSection(
                onPaymentMethodChanged: (PaymentMethodType method) {
                  setState(() {
                    selectedPaymentMethod = method;
                  });
                },
              ),
            ),
            SizedBox(height: 2.h),
            PaymentSectionWrapper(
              child: ConfirmOrderButton(
                onPressed: () {
                  _handleConfirmOrder();
                },
              ),
            ),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }

  void _handleConfirmOrder() {
    Navigator.pushNamed(context, AppRoutes.orderConfirmation);
  }
}

