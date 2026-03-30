import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import '../circle_cards/my_circle_card.dart';

class MyCirclesSection extends StatelessWidget {
  const MyCirclesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.localizations.myCircle,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textPrimary,
                ),
              ),
              SizedBox(
                height: 25.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.newCircle);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    backgroundColor: AppColors.mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        context.localizations.createNewCircle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.h),
                        child: Icon(Icons.add, size: 16.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Expanded(
            child: ListView(
              children: [
                GestureDetector(
                  child: MyCircleCard(
                    name: context.localizations.skinCare,
                    membersCount: context.localizations.membersNumber,
                    icon: Icons.face,
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.myCircleDetails,
                      arguments: {
                        'circleName': context.localizations.skinCare,
                        'imagePath': 'assets/images/skincare.jpg',
                        'isOwner': true,
                      },
                    );
                  },
                ),
                SizedBox(height: 8.h),
                GestureDetector(
                  child: MyCircleCard(
                    name: context.localizations.babyCare,
                    membersCount: context.localizations.membersNumber,
                    icon: Icons.fitness_center,
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.myCircleDetails,
                      arguments: {
                        'circleName': context.localizations.babyCare,
                        'imagePath': 'assets/images/babyCare.jpg',
                        'isOwner': true,
                      },
                    );
                  },
                ),
                SizedBox(height: 8.h),
                GestureDetector(
                  child: MyCircleCard(
                    name: context.localizations.brideZone,
                    membersCount: context.localizations.membersNumber,
                    icon: Icons.self_improvement,
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.myCircleDetails,
                      arguments: {
                        'circleName': context.localizations.brideZone,
                        'imagePath': 'assets/images/beauty-salons.jpg',
                        'isOwner': true,
                      },
                    );
                  },
                ),
                SizedBox(height: 8.h),
                GestureDetector(
                  child: MyCircleCard(
                    name: context.localizations.womenEmpowerment,
                    membersCount: context.localizations.membersNumber,
                    icon: Icons.woman,
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.myCircleDetails,
                      arguments: {
                        'circleName': context.localizations.womenEmpowerment,
                        'imagePath': 'assets/images/woman.jpg',
                        'isOwner': true,
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
