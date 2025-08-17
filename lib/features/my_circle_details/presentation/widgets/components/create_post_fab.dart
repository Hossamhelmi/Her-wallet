import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';

class CreatePostFAB extends StatelessWidget {
  const CreatePostFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.createPost);
      },
      child: Container(
        width: 60.w,
        height: 60.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.mainColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.mainColor.withOpacity(0.3),
              blurRadius: 8.r,
              offset: Offset(0, 4.h),
            ),
          ],
        ),
        child: Icon(Icons.add, color: AppColors.background, size: 30.r),
      ),
    );
  }
}
