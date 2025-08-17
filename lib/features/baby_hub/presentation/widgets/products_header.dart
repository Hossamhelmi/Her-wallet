import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_cubit.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_state.dart';

class ProductsHeader extends StatelessWidget {
  const ProductsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
          child: BlocBuilder<BabyHubCubit, BabyHubState>(
            builder: (context, state) {
              return Text(
                context.localizations.productsCount,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textSecondary,
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: GestureDetector(
            onTap: () => _showSortOptions(context),
            child: Row(
              children: [
                Text(
                  context.localizations.sortByLatest,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.textSecondary,
                  size: 22.sp,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showSortOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder:
          (context) => Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(title: Text('Sort by Latest')),
                ListTile(title: Text('Sort by Price (Low to High)')),
                ListTile(title: Text('Sort by Price (High to Low)')),
              ],
            ),
          ),
    );
  }
}
