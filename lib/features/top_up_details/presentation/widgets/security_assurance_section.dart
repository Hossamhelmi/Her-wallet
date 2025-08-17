import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class SecurityAssuranceSection extends StatelessWidget {
  const SecurityAssuranceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Material(
        borderRadius: BorderRadius.circular(12.r),
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.1),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 16.w),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.lightGreenIcon.withAlpha(51),
                  child: Image.asset(
                    'assets/icons/secured.png',
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.localizations.secureTransactions,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        context.localizations.advancedEncryption,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black54,
                          height: 1.2,
                        ),
                      ),
                    ],
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

