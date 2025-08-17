import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_cubit.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_state.dart';
import 'package:her_wallet/features/baby_hub/presentation/widgets/article_card.dart';

class ParentingTipsTab extends StatelessWidget {
  const ParentingTipsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.localizations.yourRecentlyReadArticles,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.h),
          BlocBuilder<BabyHubCubit, BabyHubState>(
            builder: (context, state) {
              return Column(
                children: [
                  ArticleCard(
                    imagePath: 'assets/images/parent_tips.jpg',
                    title: context.localizations.howToDevelopEarlyReadingSkills,
                    description:
                        context.localizations.readAboutImportanceOfEarlyReading,
                  ),
                  SizedBox(height: 16.h),
                  ArticleCard(
                    imagePath: 'assets/images/circle_cover1.jpg',
                    title: context.localizations.howToDevelopEarlyReadingSkills,
                    description:
                        context.localizations.readAboutImportanceOfEarlyReading,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
