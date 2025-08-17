// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/constants/app_text_styles.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/core/shared/widgets/custom_elevated_button.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class LoginInForm extends StatefulWidget {
  LoginInForm({super.key});
  bool visible = false;

  @override
  State<LoginInForm> createState() => _LoginInFormState();
}

class _LoginInFormState extends State<LoginInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            context.localizations.phone,
            style: AppStyles.bodyL.copyWith(color: AppColors.textPrimary),
          ),
          CustomTextFormField(
            hintText: context.localizations.enterNumber,
            prefixIcon: Icon(
              Icons.phone_android,
              color: AppColors.textSecondary,
            ),
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 16.h),
          Text(
            context.localizations.password,
            style: AppStyles.bodyL.copyWith(color: AppColors.textPrimary),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: CustomTextFormField(
              hintText: context.localizations.password,
              prefixIcon: Image.asset(
                'assets/images/lock.png',
                width: 20.w,
                height: 20.h,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    widget.visible = !widget.visible;
                  });
                },
                icon: Icon(
                  widget.visible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: AppColors.textSecondary,
                ),
              ),
              obscureText: true,
            ),
          ),

          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: Icon(
                      Icons.check_box,
                      color: AppColors.primary,
                      size: 20.sp,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    context.localizations.rememberMe,
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  // Handle forgot password action
                  Navigator.pushNamed(context, AppRoutes.forgotPassword);
                },
                child: Text(
                  context.localizations.forgotPassword,

                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.secondarybold,
                    color: AppColors.secondarybold,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25.h),
          CustomElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.home);
            },
            text: context.localizations.login,
          ),
        ],
      ),
    );
  }
}

