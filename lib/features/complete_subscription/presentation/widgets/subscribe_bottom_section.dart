import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class SubscribeBottomSection extends StatelessWidget {
  final bool isTermsAccepted;
  final ValueChanged<bool> onTermsChanged;
  final VoidCallback onSubscribePressed;

  const SubscribeBottomSection({
    super.key,
    required this.isTermsAccepted,
    required this.onTermsChanged,
    required this.onSubscribePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => onTermsChanged(!isTermsAccepted),
              icon: Icon(
                isTermsAccepted
                    ? Icons.check_box
                    : Icons.check_box_outline_blank,
                color: AppColors.mainColor,
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => onTermsChanged(!isTermsAccepted),
                child: Text(
                  context.localizations.agreeTerms,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.textTertiary,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w,),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: isTermsAccepted ? onSubscribePressed : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.mainColor,
              disabledBackgroundColor: AppColors.mainColor.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            child: Center(
              child: Text(
                context.localizations.subscribeNow,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

