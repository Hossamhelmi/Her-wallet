import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';
import '../components/form_field_label.dart';

class CircleBasicInfoSection extends StatelessWidget {
  const CircleBasicInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCircleNameField(context),
        SizedBox(height: 16.h),
        _buildCircleDescriptionField(context),
      ],
    );
  }

  Widget _buildCircleNameField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormFieldLabel(label: context.localizations.circleName),
        SizedBox(height: 8.h),
        SizedBox(
          width: double.infinity,
          height: 60.h,
          child: CustomTextFormField(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
            hintText: context.localizations.chooseANameForYourCircle,
          ),
        ),
      ],
    );
  }

  Widget _buildCircleDescriptionField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormFieldLabel(label: context.localizations.circleDescription),
        SizedBox(height: 8.h),
        SizedBox(
          width: double.infinity,
          height: 150.h,
          child: CustomTextFormField(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textTertiary),
              borderRadius: BorderRadius.all(Radius.circular(20.r)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textTertiary),
              borderRadius: BorderRadius.all(Radius.circular(20.r)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.mainColor),
              borderRadius: BorderRadius.all(Radius.circular(20.r)),
            ),
            keyboardType: TextInputType.multiline,
            minLines: 5,
            maxLines: 5,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 12.h,
            ),
            hintText: context.localizations.describeYourCircle,
            hintstyle: TextStyle(
              color: AppColors.textTertiary,
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    );
  }
}

