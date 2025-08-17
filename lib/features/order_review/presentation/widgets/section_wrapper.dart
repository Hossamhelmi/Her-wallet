import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionWrapper extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const SectionWrapper({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: 24.w),
      child: child,
    );
  }
}
