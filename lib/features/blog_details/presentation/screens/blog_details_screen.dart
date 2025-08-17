import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/features/blog_details/data/models/blog_details_model.dart';
import 'package:her_wallet/features/blog_details/presentation/widgets/blog_details_app_bar.dart';
import 'package:her_wallet/features/blog_details/presentation/widgets/article_header_section.dart';
import 'package:her_wallet/features/blog_details/presentation/widgets/article_content_section.dart';
import 'package:her_wallet/features/blog_details/presentation/widgets/similar_articles_section.dart';

class BlogDetailsScreen extends StatelessWidget {
  const BlogDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final article  = BlogDetailsModel(
    imagePath: 'assets/images/parent_tips.jpg',
    category: context.localizations.parenting,
    date: context.localizations.articleDate,
    title: context.localizations.developStrongBond,
    authorImage: 'assets/images/woman.jpg',
    authorName: context.localizations.sarahAlHassan,
    description: context.localizations.bondingDescription,
    content: context.localizations.bondingDescription,
  );

    return Scaffold(
      appBar: BlogDetailsAppBar(
        onSearchChanged: (value) {
          // Implement search functionality
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ArticleHeaderSection(
              imagePath: article.imagePath,
              category: article.category,
              date: article.date,
              title: article.title,
              authorImage: article.authorImage,
              authorName: article.authorName,
            ),
            ArticleContentSection(
              description: article.description,
              title: article.title,
              content: article.content,
            ),
            const SimilarArticlesSection(),
          ],
        ),
      ),
    );
  }
}
