import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';

class ChangePasswordDialog extends StatelessWidget {
  const ChangePasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
      contentPadding: EdgeInsets.all(24.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      backgroundColor: Colors.white,
      content: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.8,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              const Divider(),
              SizedBox(height: 16.h),
              _buildPasswordField(
                context: context,
                label: context.localizations.currentPassword,
                hintText: context.localizations.enterCurrentPassword,
              ),
              SizedBox(height: 16.h),
              _buildPasswordField(
                context: context,
                label: context.localizations.newPassword,
                hintText: context.localizations.enterNewPasswordDialog,
                showValidation: true,
              ),
              SizedBox(height: 16.h),
              _buildPasswordField(
                context: context,
                label: context.localizations.confirmNewPassword,
                hintText: context.localizations.confirmNewPasswordDialog,
                showValidation: true,
              ),
              SizedBox(height: 24.h),
              _buildActionButtons(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            context.localizations.changePassword,
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        IconButton(
          icon: Icon(Icons.close, size: 24.r),
          onPressed: () => Navigator.pop(context),
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(minWidth: 44.w, minHeight: 44.h),
          style: IconButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordField({
    required BuildContext context,
    required String label,
    required String hintText,
    bool showValidation = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textSecondary,
          ),
        ),
        CustomTextFormField(
          hintText: hintText,
          prefixIcon: Icon(Icons.lock_outline, size: 20.r),
          obscureText: true,
        ),
        if (showValidation) ...[
          SizedBox(height: 4.h),
          Text(
            context.localizations.passwordValidation,
            style: TextStyle(fontSize: 12.sp, color: AppColors.mainColor),
          ),
        ],
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.mainColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              context.localizations.confirm,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: AppColors.textPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
                side: BorderSide(color: AppColors.grey200),
              ),
            ),
            child: Text(
              context.localizations.cancel,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}

