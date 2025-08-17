import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/constants/app_text_styles.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/core/shared/widgets/custom_elevated_button.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          icon: Container(
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: AppColors.grey200,
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.greyPrimary,
              size: 20.sp,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(
                context.localizations.forgotYourPassword,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                context.localizations.forgotPasswordLine,
                style: TextStyle(color: Color(0xFF757575), fontSize: 13.8.sp),
              ),
              SizedBox(height: 24.h),
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
                            SizedBox(height: MediaQuery.of(context).size.height * 0.5),

              CustomElevatedButton(
                    onPressed:
                        () => Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.enterVerification,
                        ),
                    text: context.localizations.send,
                  ),
                    SizedBox(height: 16.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            context.localizations.rememberYourPassword,
                            style: TextStyle(
                              color: AppColors.textSecondary,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              context.localizations.login,
                              style: TextStyle(
                                color: AppColors.boldColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              
            ],
          ),
        ),
      ),
    );
  }
}

