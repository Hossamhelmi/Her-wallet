import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'coach_card.dart';

class CoachesListSection extends StatelessWidget {
  final String title;
  final List<CoachData> coaches;

  const CoachesListSection({
    super.key,
    required this.title,
    required this.coaches,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        SizedBox(height: 2.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children:
                coaches.map((coach) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: CoachCard(
                      name: coach.name,
                      specialization: coach.specialization,
                      rating: coach.rating,
                      price: coach.price,
                      imagePath: coach.imagePath,
                      onBookSession: coach.onBookSession,
                    ),
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }
}

class CoachData {
  final String name;
  final String specialization;
  final String rating;
  final String price;
  final String imagePath;
  final VoidCallback onBookSession;

  const CoachData({
    required this.name,
    required this.specialization,
    required this.rating,
    required this.price,
    required this.imagePath,
    required this.onBookSession,
  });
}
