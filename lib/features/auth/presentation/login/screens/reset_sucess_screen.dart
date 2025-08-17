import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/core/shared/widgets/custom_elevated_button.dart';

class ResetSuccessScreen extends StatelessWidget {
  const ResetSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/resetSuccessful.png',
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            Text(
              context.localizations.resetPasswordSuccesfully,
              style: TextStyle(
                color: AppColors.mainColor,
                fontSize: 28.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              context.localizations.resetSuccessLine,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 14.5.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.08,
                right: MediaQuery.of(context).size.height * 0.02,
                left: MediaQuery.of(context).size.height * 0.02,
              ),
              child: Column(
                children: [
                  CustomElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, AppRoutes.login);
                    },
                    text: context.localizations.login,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

