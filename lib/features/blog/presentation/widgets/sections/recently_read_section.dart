import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/features/blog/data/models/blog_article.dart';
import 'package:her_wallet/features/blog/presentation/widgets/blog_article_card.dart';
import 'package:her_wallet/features/blog/presentation/widgets/section_header.dart';

class RecentlyReadSection extends StatelessWidget {
  const RecentlyReadSection({super.key});

  @override
  Widget build(BuildContext context) {
    final article = BlogArticle(
    imagePath: 'assets/images/parent_tips.jpg',
    category: context.localizations.parenting,
    title: context.localizations.earlyReadingSkills,
    description: context.localizations.readingSkillsDescription,
    date: context.localizations.articleDate,
  );

    return Column(
      children: [
        SectionHeader(
          title: context.localizations.yourRecentlyReadArticles,
          showViewAll: false,
        ),
        BlogArticleCard(
          imagePath: article.imagePath,
          category: article.category,
          date: article.date ?? '',
          title: article.title,
          description: article.description,
        ),
      ],
    );
  }
}

