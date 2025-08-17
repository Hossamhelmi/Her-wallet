import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/women_empowerment/presentation/widgets/event_card.dart';

class EventListSection extends StatelessWidget {
  final String title;
  final List<EventData> events;

  const EventListSection({
    super.key,
    required this.title,
    required this.events,
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
                events.map((event) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: EventCard(
                      name: event.title,
                      discription: event.discription,
                      price: event.price,
                      imagePath: event.imagePath,
                    ),
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }
}

class EventData {
  final String title;
  final String discription;
  final String price;
  final String imagePath;

  const EventData({
    required this.title,
    required this.discription,
    required this.price,
    required this.imagePath,
  });
}
              
