import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class MenuItemWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconColor;
  final Color backgroundColor;
  final VoidCallback? onTap;
  final Widget? trailing;
  final double? fontSize;

  const MenuItemWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.iconColor,
    required this.backgroundColor,
    this.onTap,
    this.trailing,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w,),
      minVerticalPadding: 8.h,
      leading: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: 20.r,
        child: Icon(icon, color: iconColor, size: 20.r),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: fontSize ?? 14.sp,
          fontWeight: FontWeight.w600,
        ),
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
      trailing:
          trailing ??
          Icon(
            Icons.arrow_forward_ios,
            size: 16.r,
            color: AppColors.textTertiary,
          ),
    );
  }
}
