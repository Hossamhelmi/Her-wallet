import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';

class ExploreBoxesSection extends StatelessWidget {
  const ExploreBoxesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_buildSectionTitle(context), _buildBoxesList()],
    );
  }

  Widget _buildSectionTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        context.localizations.exploreOurBoxes,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  Widget _buildBoxesList() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 8.h),
      child: SizedBox(
        height: 300.h,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder:
              (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: ExploreBoxCard(index: index),
              ),
        ),
      ),
    );
  }
}

class ExploreBoxCard extends StatelessWidget {
  final int index;

  const ExploreBoxCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(24.r),
      color: AppColors.backgroundprimary,
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.1),
      child: SizedBox(
        width: 280.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCoverImage(),
            SizedBox(height: 12.h),
            _buildBoxTitle( context),
            SizedBox(height: 4.h),
            _buildBoxDescription(),
            SizedBox(height: 8.h),
            _buildStartingFromText(context),
            _buildPriceRow(context),
            SizedBox(height: 5.h),
            _buildActionButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildCoverImage() {
    return SizedBox(
      height: 140.h,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
        child: Image.asset(
          'assets/images/circle_cover1.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildBoxTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        context.localizations.babyCare,
        style: TextStyle(
          fontSize: 16.sp,
          height: 1.2,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  Widget _buildBoxDescription() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        'Safe and natural products for infates',
        style: TextStyle(
          height: 1.3,
          fontSize: 12.sp,
          color: AppColors.textSecondary,
        ),
      ),
    );
  }

  Widget _buildStartingFromText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        context.localizations.startingFrom,
        style: TextStyle(
          height: 1.2,
          color: AppColors.textSecondary,
          fontSize: 11.sp,
        ),
      ),
    );
  }

  Widget _buildPriceRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'EGP 199',
            style: TextStyle(
              height: 1.2,
              fontWeight: FontWeight.bold,
              color: AppColors.mainColor,
              fontSize: 16.sp,
            ),
          ),
          Text(
            context.localizations.monthly,
            style: TextStyle(
              height: 1.2,
              fontWeight: FontWeight.w500,
              color: AppColors.textSecondary,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 2.h),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 35.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.subscriptionDetails);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
                child: Text(
                  context.localizations.subscribeNow,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: SizedBox(
              height: 35.h,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: AppColors.mainColor, width: 1),
                 
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    // Added proper vertical padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    
                  ),
                  child: Text(
                    context.localizations.viewPlans,
                    style: TextStyle(
                      fontSize: 12.sp,
                      height: 1.2,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

