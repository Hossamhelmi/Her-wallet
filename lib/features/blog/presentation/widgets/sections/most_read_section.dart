import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/blog/data/models/blog_article.dart';
import 'package:her_wallet/features/blog/presentation/widgets/horizontal_blog_card.dart';
import 'package:her_wallet/features/blog/presentation/widgets/section_header.dart';

class MostReadSection extends StatelessWidget {
  const MostReadSection({super.key});

  @override
  Widget build(BuildContext context) {
    List <BlogArticle> mostReadArticles =[
    BlogArticle(
      imagePath: 'assets/images/food.jpg',
      category: context.localizations.health,
      title: context.localizations.quickHealthyMeals,
      description: context.localizations.healthyMealsDescription,
    ),
    /*
    BlogArticle(
      imagePath: 'assets/images/food.jpg',
      category: context.localizations.health,
      title: context.localizations.quickHealthyMeals,
      description: context.localizations.healthyMealsDescription,
    ),
  */
  ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8.h),
        SectionHeader(
          title: context.localizations.mostRead,
          onViewAllTap: () {
            // Implement view all functionality
          },
        ),
        ...mostReadArticles.map(
          (article) => HorizontalBlogCard(
            imagePath: article.imagePath,
            category: article.category,
            title: article.title,
            description: article.description,
            categoryColor: AppColors.greenIcon,
            onTap: () {
              // Handle card tap
            },
          ),
        ),
      ],
    );
  }
}

