import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../circle_cards/discover_circle_card.dart';

class DiscoverMoreSection extends StatelessWidget {
  const DiscoverMoreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.localizations.discoverMore,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 8.h),
          Expanded(
            child: GridView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(bottom: 3.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 18.h,
              ),
             children: [
                DiscoverCircleCard(
                  name: context.localizations.skinCare,
                  membersCount: context.localizations.membersNumber,
                  icon: Icons.face,
                  arguments: {
                    'circleName': context.localizations.skinCare,
                    'imagePath': 'assets/images/skincare.jpg',
                    'isOwner': false,
                  },
                ),
                DiscoverCircleCard(
                  name: context.localizations.babyCare,
                  membersCount: context.localizations.membersNumber,
                  icon: Icons.baby_changing_station_outlined,
                  arguments: {
                    'circleName': context.localizations.babyCare,
                    'imagePath': 'assets/images/babyCare.jpg',
                    'isOwner': false,
                  },
                ),
                DiscoverCircleCard(
                  name: context.localizations.brideZone,
                  membersCount: context.localizations.membersNumber,
                  icon: Icons.party_mode_outlined,
                  arguments: {
                    'circleName': context.localizations.brideZone,
                    'imagePath': 'assets/images/beauty-salons.jpg',
                    'isOwner': false,
                  },
                ),
                DiscoverCircleCard(
                  name: context.localizations.womenEmpowerment,
                  membersCount: context.localizations.membersNumber,
                  icon: Icons.woman_2_outlined,
                  arguments: {
                    'circleName': context.localizations.womenEmpowerment,
                    'imagePath': 'assets/images/woman.jpg',
                    'isOwner': false,
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


