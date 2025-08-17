import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageSection extends StatelessWidget {
  final String imagePath;
  final double height;

  const ProductImageSection({
    super.key,
    required this.imagePath,
    this.height = 160,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    );
  }
}
