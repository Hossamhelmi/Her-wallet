import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.termsAndConditions),
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
                    context.localizations.termsAndConditions,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  _buildSectionTitle(context.localizations.introduction),
                  SizedBox(height: 8.h),
                  _buildSectionContent(context.localizations.introductionContent),
                  SizedBox(height: 20.h),
                  _buildSectionTitle(context.localizations.userObligations),
                  SizedBox(height: 8.h),
                  _buildSectionContent(context.localizations.userObligationsContent),
                  SizedBox(height: 20.h),
                  _buildSectionTitle(context.localizations.limitationOfLiability),
                  SizedBox(height: 8.h),
                  _buildSectionContent(context.localizations.limitationOfLiabilityContent),
                  SizedBox(height: 20.h),
                  _buildSectionTitle(context.localizations.modifications),
                  SizedBox(height: 8.h),
                  _buildSectionContent(context.localizations.modificationsContent),
                  SizedBox(height: 20.h),
                  _buildSectionTitle(context.localizations.termination),
                  SizedBox(height: 8.h),
                  _buildSectionContent(context.localizations.terminationContent),
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

