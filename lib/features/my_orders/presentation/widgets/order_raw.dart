import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/core/routes/app_routes.dart';

class OrderRaw extends StatelessWidget {
  final String status;
  const OrderRaw({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h),
      child: Container(
        height: 120.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8.r,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.r),
                bottomLeft: Radius.circular(10.r),
              ),
              child: Image.asset(
                'assets/images/bag.jpg',
                width: 75.w,
                height: 120.h,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 75.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      color: AppColors.grey200,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        bottomLeft: Radius.circular(10.r),
                      ),
                    ),
                    child: Icon(
                      Icons.image_not_supported,
                      size: 24.r,
                      color: AppColors.greyIcon,
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.localizations.orderDate,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.textSecondary,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          context.localizations.orderNumber,
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.localizations.totalLabel,
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        Text(
                          context.localizations.orderAmount,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.mainColor,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color:
                          status == context.localizations.delivered
                              ? AppColors.greenIcon.withAlpha(20)
                              : status == context.localizations.cancelled
                              ? AppColors.redIcon.withAlpha(20)
                              : AppColors.orangeIcon.withAlpha(20),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Text(
                      status,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color:
                            status == context.localizations.delivered
                                ? AppColors.greenIcon
                                : status == context.localizations.cancelled
                                ? AppColors.redIcon
                                : AppColors.orangeIcon,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16.r,
                      color: AppColors.textTertiary,
                    ),
                    style: IconButton.styleFrom(
                      minimumSize: Size(36.w, 36.h),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.orderDetails);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
