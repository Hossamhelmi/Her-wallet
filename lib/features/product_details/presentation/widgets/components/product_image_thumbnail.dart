import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageThumbnail extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  final bool isSelected;

  const ProductImageThumbnail({
    super.key,
    required this.imagePath,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60.w,
        height: 70.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border:
              isSelected
                  ? Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 2.w,
                  )
                  : Border.all(color: Colors.grey.withOpacity(0.3), width: 1.w),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          boxShadow:
              isSelected
                  ? [
                    BoxShadow(
                      color: Theme.of(context).primaryColor.withOpacity(0.3),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ]
                  : [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
        ),
      ),
    );
  }
}
