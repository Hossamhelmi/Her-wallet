import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/privacy_option_card.dart';
import '../components/form_field_label.dart';

class CirclePrivacySection extends StatefulWidget {
  const CirclePrivacySection({super.key});

  @override
  State<CirclePrivacySection> createState() => _CirclePrivacySectionState();
}

class _CirclePrivacySectionState extends State<CirclePrivacySection> {
  bool isPublic = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormFieldLabel(label: context.localizations.circlePrivacy),
        SizedBox(height: 8.h),
        Row(
          children: [
            GestureDetector(
              onTap: () => setState(() => isPublic = true),
              child: PrivacyOptionCard(
                icon: Icons.public,
                title: context.localizations.public,
                description: context.localizations.circlePublicDescription,
                isSelected: isPublic,
              ),
            ),
            SizedBox(width: 12.w),
            GestureDetector(
              onTap: () => setState(() => isPublic = false),
              child: PrivacyOptionCard(
                icon: Icons.lock_outline,
                title: context.localizations.private,
                description:
                    context.localizations.circlePrivatePrivateDescription,
                isSelected: !isPublic,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
