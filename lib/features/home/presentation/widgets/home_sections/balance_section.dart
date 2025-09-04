import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/features/home_layout/presentation/cubits/home_cubit.dart';

class BalanceSection extends StatelessWidget {
  final Color? backgroundColor;
  const BalanceSection({super.key, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.appBar,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.r),
              bottomRight: Radius.circular(30.r),
            ),
          ),
          height: 153.h,
        ),
        Container(
          margin: EdgeInsets.only(
            left: 28.w,
            right: 28.w,
            bottom: 1.h,
            top: 16.h,
          ),
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            bottom: 8.h,
            top: 4.h,
          ),

          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.backgroundSecondary.withOpacity(0.3),
                blurRadius: 8.r,
                offset: Offset(0, 2.h),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.localizations.balance,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.appBar,
                    ),
                    height: 33.h,
                    width: 33.w,
                    child: IconButton(
                      icon: Icon(
                        Icons.wallet_giftcard_outlined,
                        color: Colors.white,
                        size: 24.w,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.topUpBalance,
                            arguments: {"isSendMoney": false});
                      },
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Text(
                context.watch<HomeLayoutCubit>().state.balanceVisible
                    ? '*************'
                    : 'EGP 12,450',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.appBar,
                ),
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _buildActionButton(
                      icon: 'send_money.png',
                      label: context.localizations.sendMoney,
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.topUpBalance,arguments: {"isSendMoney": true});
                      },
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: _buildActionButton(
                      icon: 'pay_order.png',
                      label: context.localizations.payYourOrder,
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.orderPayment);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required String icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: AppColors.greyLight,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/$icon',
              height: 20.h,
              width: 20.w,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.payment,
                  size: 20.w,
                  color: AppColors.textPrimary,
                );
              },
            ),
            SizedBox(width: 6.w),
            Flexible(
              child: Text(
                label,
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
