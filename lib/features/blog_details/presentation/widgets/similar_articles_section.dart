import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/blog/presentation/widgets/horizontal_blog_card.dart';

class SimilarArticlesSection extends StatelessWidget {
  const SimilarArticlesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(
            context.localizations.similarArticles,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              height: 1.0,
            ),
          ),
        ),
        SizedBox(height: 15.h),
        HorizontalBlogCard(
          imagePath: 'assets/images/food.jpg',
          category: context.localizations.health,
          title: context.localizations.quickHealthyMeals,
          description: context.localizations.healthyMealsDescription,
          categoryColor: AppColors.greenIcon,
          onTap: () {
            // Handle card tap
          },
        ),
        HorizontalBlogCard(
          imagePath: 'assets/images/food.jpg',
          category: context.localizations.health,
          title: context.localizations.quickHealthyMeals,
          description: context.localizations.healthyMealsDescription,
          categoryColor: AppColors.greenIcon,
          onTap: () {
            // Handle card tap
          },
        ),
      ],
    );
  }
}

