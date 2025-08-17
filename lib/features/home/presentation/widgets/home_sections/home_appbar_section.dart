import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/features/home_layout/presentation/cubits/home_cubit.dart';

class HomeAppbarSection extends AppBar {
  HomeAppbarSection({super.key});

  static AppBar build(BuildContext context) {
    return AppBar(
      
      centerTitle: false,
      backgroundColor: AppColors.appBar,
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Text(
              context.localizations.welcomeUser,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            context.localizations.currentDate,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
      actions: [
        _buildActionButton(
          icon: context.read<HomeLayoutCubit>().state.balanceVisible
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
          onPressed: () {
            context.read<HomeLayoutCubit>().toggleBalanceVisibility();
          },
        ),
        SizedBox(width: 8.w),
        _buildActionButton(
          icon: Icons.notifications_outlined,
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: AppColors.surface,
                  title: Text(context.localizations.notifications),
                  content: Text('No new notifications at the moment.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(context.localizations.close),
                    ),
                  ],
                );
              },
            );
          },
        ),
        SizedBox(width: 16.w),
      ],
    );
  }

  static Widget _buildActionButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primary.withAlpha(80),
      ),
      height: 45.h,
      width: 45.w,
      child: IconButton(
        icon: Icon(icon, color: Colors.white, size: 20.w),
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(minWidth: 40.w, minHeight: 40.h),
      ),
    );
  }
}
