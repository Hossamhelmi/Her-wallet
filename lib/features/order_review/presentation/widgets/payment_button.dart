import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.orderPayment);
        },
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.mainColor),
          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 5.h)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          ),
          elevation: WidgetStatePropertyAll(2),
        ),
        child: Text(
          context.localizations.pay,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

