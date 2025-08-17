import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';

class CraeteAccount extends StatelessWidget {
  const CraeteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.localizations.alreadyHaveAccount,
          style: TextStyle(color: Color(0xFF757575), fontSize: 16.sp),
        ),
        GestureDetector(
          onTap: () {
            // Handle navigation to Sign Up
          },
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.login);
            },
            child: Text(
              "Login",
              style: TextStyle(
                color: AppColors.mainColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

