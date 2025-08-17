import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.privacyPolicy),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localizations.privacyPolicy,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  _buildSectionTitle(context.localizations.privacyIntroduction),
                  SizedBox(height: 8.h),
                  _buildSectionContent(context.localizations.privacyIntroductionContent),
                  SizedBox(height: 20.h),
                  _buildSectionTitle(context.localizations.informationCollection),
                  SizedBox(height: 8.h),
                  _buildSectionContent(context.localizations.informationCollectionContent),
                  SizedBox(height: 20.h),
                  _buildSectionTitle(context.localizations.informationUse),
                  SizedBox(height: 8.h),
                  _buildSectionContent(context.localizations.informationUseContent),
                  SizedBox(height: 20.h),
                  _buildSectionTitle(context.localizations.dataSecurity),
                  SizedBox(height: 8.h),
                  _buildSectionContent(context.localizations.dataSecurityContent),
                  SizedBox(height: 20.h),
                  _buildSectionTitle(context.localizations.contactUs),
                  SizedBox(height: 8.h),
                  _buildSectionContent(context.localizations.contactUsContent),
                  SizedBox(height: 24.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(content, style: TextStyle(fontSize: 14.sp, height: 1.5));
  }
}

