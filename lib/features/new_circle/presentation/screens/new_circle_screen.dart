import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
import '../widgets/widgets.dart';

class NewCircleScreen extends StatelessWidget {
  const NewCircleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.createNewCircle),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleBasicInfoSection(),
                  SizedBox(height: 20.h),
                  CircleCategorySection(),
                  SizedBox(height: 20.h),
                  ImageSection(title: context.localizations.coverImage),
                  SizedBox(height: 20.h),
                  CirclePrivacySection(),
                  SizedBox(height: 40.h),
                  CreateCircleButton(
                    onPressed: () {
                      // Handle create circle action
                    },
                  ),
                  SizedBox(height: 24.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

