// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/constants/app_text_styles.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class SignUpForm extends StatefulWidget {
  SignUpForm({super.key});
  bool visible = false;

  @override
  State<SignUpForm> createState() => _LoginInFormState();
}

class _LoginInFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            context.localizations.fullName,
            style: AppStyles.bodyL.copyWith(color: AppColors.textPrimary),
          ),
          CustomTextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            hintText: context.localizations.enterYourName,
            prefixIcon: Icon(Icons.person_sharp),
          ),
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
            textInputAction: TextInputAction.next,
          ),
          Text(
            context.localizations.password,
            style: AppStyles.bodyL.copyWith(color: AppColors.textPrimary),
          ),
          CustomTextFormField(
            hintText: context.localizations.enterPassword,
            obscureText: true,
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
          ),
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
              Text(
                context.localizations.agreeTerms,
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: AppColors.mainColor,
              foregroundColor: Colors.white,
              minimumSize: Size(double.infinity, 48.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.r)),
              ),
            ),
            child:  Text(context.localizations.createAnAccount),
          ),
        ],
      ),
    );
  }
}

