import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/features/blog/presentation/widgets/blog_app_bar.dart';
import 'package:her_wallet/features/blog/presentation/widgets/sections/recently_read_section.dart';
import 'package:her_wallet/features/blog/presentation/widgets/sections/latest_articles_section.dart';
import 'package:her_wallet/features/blog/presentation/widgets/sections/most_read_section.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  String? selected;

  void onSelected(value) {
    setState(() {
      selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    /*
   List<String>  circleTypes= [
    context.localizations.all,
    context.localizations.moms,
    context.localizations.beauty,
    context.localizations.family,
    context.localizations.friends,
  ];
  */
    selected = context.localizations.all;
    return Scaffold(
      appBar: BlogAppBar(
        onSearchChanged: (value) {
          // Implement search functionality
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            /*
            RadioSelectionSection(
              list: circleTypes,
              selected: selected,
              onSelected: onSelected,
            ),
            */
            const RecentlyReadSection(),
            const LatestArticlesSection(),
            const MostReadSection(),
          ],
        ),
      ),
    );
  }
}
