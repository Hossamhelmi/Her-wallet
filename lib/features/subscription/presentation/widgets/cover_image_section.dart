import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoverImageSection extends StatelessWidget {
  final String coverImage;
  const CoverImageSection({super.key, required this.coverImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
        child: Image.asset(
          coverImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}