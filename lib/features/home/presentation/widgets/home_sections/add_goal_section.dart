import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../dialogs/add_goal_dialog.dart';

class AddGoalSection extends StatelessWidget {
  const AddGoalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.appBar, width: 1.5.w),
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white,
        ),

        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(20.r),
            onTap: () {
              showDialog(
                context: context,
                builder: (_) =>  AddGoalDialog(),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, color: AppColors.appBar, size: 20.w),
                SizedBox(width: 8.w),
                Text(
                  context.localizations.addNewGoal,
                  style: TextStyle(
                    color: AppColors.appBar,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

