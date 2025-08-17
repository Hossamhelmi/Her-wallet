import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/features/more/presentation/widgets/profile_header_widget.dart';
import 'package:her_wallet/features/more/presentation/widgets/menu_section_widget.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeaderWidget(
                name: context.localizations.nadineEssam,
                profileImagePath: 'assets/images/woman.jpg',
              ),
              const MenuSectionWidget(),
              SizedBox(height: 8.h),
            ],
          ),
        ),
      ),
    );
  }
}
