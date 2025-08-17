import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/features/blog/data/models/blog_article.dart';
import 'package:her_wallet/features/blog/presentation/widgets/compact_blog_card.dart';
import 'package:her_wallet/features/blog/presentation/widgets/section_header.dart';

class LatestArticlesSection extends StatelessWidget {
  const LatestArticlesSection({super.key});

  @override
  Widget build(BuildContext context) {
   List<BlogArticle> latestArticles =  [
    BlogArticle(
      imagePath: 'assets/images/skinCareRoutine.jpg',
      category: context.localizations.beauty,
      title: context.localizations.skinCareRoutine,
      description: context.localizations.skinCareTips,
    ),
    BlogArticle(
      imagePath: 'assets/images/skinCareRoutine.jpg',
      category: context.localizations.beauty,
      title: context.localizations.skinCareRoutine,
      description: context.localizations.skinCareTips,
    ),
    BlogArticle(
      imagePath: 'assets/images/skinCareRoutine.jpg',
      category: context.localizations.beauty,
      title: context.localizations.skinCareRoutine,
      description: context.localizations.skinCareTips,
    ),
    BlogArticle(
      imagePath: 'assets/images/skinCareRoutine.jpg',
      category: context.localizations.beauty,
      title: context.localizations.skinCareRoutine,
      description: context.localizations.skinCareTips,
    ),
  ];
    return Column(
      children: [
        SectionHeader(
          title: context.localizations.latestArticles,
          onViewAllTap: () {
            // Implement view all functionality
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Wrap(
            spacing: 10.w,
            runSpacing: 8.h,
            children:
                latestArticles
                    .map(
                      (article) => CompactBlogCard(
                        imagePath: article.imagePath,
                        category: article.category,
                        title: article.title,
                        description: article.description,
                        onTap: () {
                          // Handle card tap
                        },
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    );
  }
}

