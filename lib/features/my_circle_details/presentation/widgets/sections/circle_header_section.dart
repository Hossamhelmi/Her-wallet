import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';

class CircleHeaderSection extends StatelessWidget {
  final String circleName;
  final String memberCount;
  final String role;
  final String coverImagePath;

  const CircleHeaderSection({
    super.key,
    required this.circleName,
    required this.memberCount,
    required this.role,
    required this.coverImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Stack(
        children: [
          _buildCoverImage(),
          _buildGradientOverlay(),
          _buildHeaderContent(context),
        ],
      ),
    );
  }

  Widget _buildCoverImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.r),
      child: Image.asset(
        coverImagePath,
        fit: BoxFit.cover,
        width: double.infinity,
        height: 230.h,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: double.infinity,
            height: 230.h,
            decoration: BoxDecoration(
              color: AppColors.grey200,
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Icon(
              Icons.image_not_supported,
              size: 48.r,
              color: AppColors.greyIcon,
            ),
          );
        },
      ),
    );
  }

  Widget _buildGradientOverlay() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      height: 80.h,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24.r),
            bottomRight: Radius.circular(24.r),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderContent(BuildContext context) {
    return Positioned(
      bottom: 20.h,
      left: 16.w,
      right: 16.w,
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white, size: 24.r),
            onPressed: () => Navigator.pop(context),
            style: IconButton.styleFrom(minimumSize: Size(44.w, 44.h)),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  circleName,
                  style: TextStyle(
                    color: AppColors.background,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Text(
                  memberCount,
                  style: TextStyle(
                    color: AppColors.background,
                    fontSize: 14.sp,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(width: 16.w),
          _buildRoleBadge(context),
        ],
      ),
    );
  }

  Widget _buildRoleBadge(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.memberManagement);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: AppColors.appBar,
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              role,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 6.w),
            Icon(Icons.king_bed_outlined, color: Colors.white, size: 14.r),
          ],
        ),
      ),
    );
  }
}
