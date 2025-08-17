import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/constants/app_text_styles.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/core/shared/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class NewPasswordScreen extends StatefulWidget {
  NewPasswordScreen({super.key});
  bool visible = false;

  @override
  State<NewPasswordScreen> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPasswordScreen> {
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
                context.localizations.newPassword,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                context.localizations.newPasswordLine,
                style: TextStyle(color: Color(0xFF757575), fontSize: 13.8.sp),
              ),
              SizedBox(height: 24.h),
        
              Text(
                context.localizations.newPassword,
                style: AppStyles.bodyL.copyWith(color: AppColors.textPrimary),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: TextFormField(
                  onSaved: (password) {},
                  onChanged: (password) {},
                  obscureText: true,
        
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: context.localizations.enterPassword,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: TextStyle(color: Color(0xFF757575)),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 12.h,
                    ),
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
                    border: AppStyles.authOutlineInputBorder,
                    enabledBorder: AppStyles.authOutlineInputBorder,
                    focusedBorder: AppStyles.authOutlineInputBorder.copyWith(
                      borderSide: const BorderSide(color: AppColors.mainColor),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                context.localizations.confirmPassword,
                style: AppStyles.bodyL.copyWith(color: AppColors.textPrimary),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: TextFormField(
                  onSaved: (password) {},
                  onChanged: (password) {},
                  obscureText: true,
        
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: context.localizations.enterPassword,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: TextStyle(color: Color(0xFF757575)),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 12.h,
                    ),
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
                    border: AppStyles.authOutlineInputBorder,
                    enabledBorder: AppStyles.authOutlineInputBorder,
                    focusedBorder: AppStyles.authOutlineInputBorder.copyWith(
                      borderSide: const BorderSide(color: AppColors.mainColor),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                context.localizations.passwordInstructions,
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.28),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.08,
                ),
                child: Column(
                  children: [
                    CustomElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.resetSuccess);
                      },
                      text: context.localizations.save,
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

