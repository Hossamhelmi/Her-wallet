import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/search_field.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_cubit.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_state.dart';
import 'package:her_wallet/features/baby_hub/presentation/widgets/tab_bar_section.dart';
import 'package:her_wallet/features/baby_hub/presentation/widgets/baby_care_tab.dart';
import 'package:her_wallet/features/baby_hub/presentation/widgets/kids_clothing_tab.dart';
import 'package:her_wallet/features/baby_hub/presentation/widgets/parenting_tips_tab.dart';

class BabyHubScreen extends StatelessWidget {
  const BabyHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          TabBarSection(),
          Expanded(
            child: BlocBuilder<BabyHubCubit, BabyHubState>(
              builder: (context, state) {
                switch (state.selectedTabIndex) {
                  case 0:
                    return BabyCareTab();
                  case 1:
                    return KidsClothingTab();
                  case 2:
                    return ParentingTipsTab();
                  default:
                    return BabyCareTab();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(80.0.h),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: SearchField(
            hintText: context.localizations.searchForProduct,
            onChanged: (value) {},
          ),
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: AppColors.appBar,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      centerTitle: false,
      leading: Padding(
        padding: EdgeInsets.only(bottom: 5.h),
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      title: Text(
        context.localizations.babyhub,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
