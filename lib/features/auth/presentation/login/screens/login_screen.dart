import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/auth/presentation/login/widgets/login_form.dart';
import 'package:her_wallet/features/auth/presentation/login/widgets/no_account.dart';
import 'package:her_wallet/features/more/presentation/widgets/menu_section_widget.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(backgroundColor: Colors.grey[200]),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.localizations.loginIntoAccount,
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showLanguageDialog(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 1.5.r,
                            ),
                            borderRadius: BorderRadius.circular(25.r),
                          ),
                          child: CircleAvatar(
                            radius: 24.r,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Text(
                                context.localizations.currentLanguage,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 16.h),
                  Text(
                    context.localizations.welcomeBack,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    context.localizations.loginToAccess,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF757575), fontSize: 16.sp),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  LoginInForm(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  SizedBox(height: 16.h),
                  const NoAccountText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

