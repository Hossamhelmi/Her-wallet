import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/features/circles/presentation/widgets/circle_sections/circles_header_section.dart';
import 'package:her_wallet/features/circles/presentation/widgets/circle_sections/discover_more_section.dart';
import 'package:her_wallet/features/circles/presentation/widgets/circle_sections/my_circles_section.dart';

class CirclesScreen extends StatelessWidget {
  const CirclesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CirclesHeaderSection(),
          SizedBox(
            height:  0.37.sh,
            child: MyCirclesSection()),
          SizedBox(
            height: 0.35.sh,
            child: DiscoverMoreSection()),
          SizedBox(height: 4.h),
        ],
      ),
    );
  }
}
