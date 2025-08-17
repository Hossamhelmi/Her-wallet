import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';
import 'package:her_wallet/core/shared/widgets/image_section.dart';

class ImagePostSection extends StatelessWidget {
  const ImagePostSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          ImageSection(title: ''),
          SizedBox(height: 16.h),
          _buildImageCommentField(context),
        ],
      ),
    );
  }

  Widget _buildImageCommentField(BuildContext context) {
    return SizedBox(
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
        contentPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        hintText: context.localizations.addCommentWithPhoto,
        hintstyle: TextStyle(color: AppColors.textTertiary, fontSize: 14.sp),
      ),
    );
  }
}

