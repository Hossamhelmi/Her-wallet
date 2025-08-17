import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_cubit.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_state.dart';

class TabBarSection extends StatelessWidget {
  const TabBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: BlocBuilder<BabyHubCubit, BabyHubState>(
        builder: (context, state) {
          return Row(
            children: [
              Expanded(
                child: _buildTabButton(
                  context,
                  context.localizations.babyCare,
                  0,
                  state.selectedTabIndex == 0,
                ),
              ),
              Expanded(
                child: _buildTabButton(
                  context,
                  context.localizations.kidsClothing,
                  1,
                  state.selectedTabIndex == 1,
                ),
              ),
              Expanded(
                child: _buildTabButton(
                  context,
                  context.localizations.parentingTips,
                  2,
                  state.selectedTabIndex == 2,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTabButton(
    BuildContext context,
    String text,
    int index,
    bool isSelected,
  ) {
    return GestureDetector(
      onTap: () {
        context.read<BabyHubCubit>().selectTab(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? AppColors.appBar : Colors.transparent,
              width: 2.0,
            ),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? AppColors.appBar : Colors.grey,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
