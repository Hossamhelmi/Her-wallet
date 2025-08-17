import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class PaymentMethodCard extends StatelessWidget {
  final String id;
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentMethodCard({
    super.key,
    required this.id,
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        width: MediaQuery.of(context).size.width * 0.43,
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
        constraints: BoxConstraints(minHeight: 60.h),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? AppColors.mainColor.withOpacity(0.1)
                  : AppColors.surface,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: isSelected ? AppColors.mainColor.withAlpha(80) : Colors.transparent,
            width: 2.w,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundColor:
                  isSelected
                      ? AppColors.mainColor.withOpacity(0.2)
                      : AppColors.grey200,
              child: Icon(
                icon,
                size: 28.w,
                color: isSelected ? AppColors.mainColor : AppColors.primary,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              title,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: isSelected ? AppColors.mainColor : AppColors.textPrimary,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
