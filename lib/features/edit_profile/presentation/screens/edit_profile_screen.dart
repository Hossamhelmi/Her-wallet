import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.editProfile),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(16.w),
                    width: double.infinity,
                    height: 180.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.mainColor,
                                  width: 2.w,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 50.r,
                                backgroundImage: AssetImage(
                                  'assets/images/woman.jpg',
                                ),
                              ),
                            ),
                            Positioned(
                              right: -1.w,
                              bottom: 5.h,
                              child: CircleAvatar(
                                radius: 15.r,
                                backgroundColor: AppColors.mainColor,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 20.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          context.localizations.uploadImageDescription,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    context.localizations.personalInformation,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.localizations.fullName,
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        CustomTextFormField(
                          readOnly: true,
                          hintText: context.localizations.enterYourName,
                          prefixIcon: Icon(Icons.person_outline),
                          initialValue: context.localizations.nadineEssam,
                        ),
                        Text(
                          context.localizations.phone,
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        CustomTextFormField(
                          readOnly: true,
                          hintText: context.localizations.enterNumber,
                          prefixIcon: Icon(Icons.phone_outlined),
                          initialValue: '123-456-7890',
                        ),
                        Text(
                          context.localizations.email,
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        CustomTextFormField(
                          hintText: context.localizations.enterYourEmail,
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                        Text(
                          context.localizations.userAddress,
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        CustomTextFormField(
                          hintText: context.localizations.enterYourAddress,
                          prefixIcon: Icon(Icons.location_on_outlined),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      child: Text(context.localizations.cancel),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Save changes logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.mainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      child: Text(context.localizations.saveChanges),
                    ),
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

