import 'package:flutter/material.dart';
import '../sections/image_post_section.dart';
import '../sections/text_post_section.dart';

class PostContentSection extends StatelessWidget {
  final TabController tabController;

  const PostContentSection({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: tabController,
      builder: (context, child) {
        if (tabController.index == 0) {
          return ImagePostSection();
        } else {
          return TextPostSection();
        }
      },
    );
  }
}
