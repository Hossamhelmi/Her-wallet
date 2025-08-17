import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../components/order_status_step.dart';
import '../components/order_progress_connector.dart';

class OrderStatusSection extends StatelessWidget {
  final String currentStatus;

  const OrderStatusSection({super.key, required this.currentStatus});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order Status',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Row(
            children: [
              // Review Step
              OrderStatusStep(
                icon: Icons.check_outlined,
                label: context.localizations.review,
                isCompleted: true,
                isActive: false,
              ),
              OrderProgressConnector(isCompleted: true),

              // Payment Step
              OrderStatusStep(
                icon: Icons.check_outlined,
                label: context.localizations.payment,
                isCompleted: true,
                isActive: false,
              ),
              OrderProgressConnector(
                isCompleted:
                    currentStatus != 'Review' && currentStatus != 'Payment',
              ),

              // Shipping Step
              OrderStatusStep(
                icon: Icons.local_shipping,
                label: 'Shipping',
                isCompleted: currentStatus == 'Delivered',
                isActive:
                    currentStatus == 'Shipping' ||
                    currentStatus == 'In Progress',
                iconColor:
                    currentStatus == 'Shipping' ||
                            currentStatus == 'In Progress'
                        ? AppColors.backgroundprimary
                        : (currentStatus == 'Delivered'
                            ? AppColors.mainColor
                            : AppColors.greyIcon),
                backgroundColor:
                    currentStatus == 'Shipping' ||
                            currentStatus == 'In Progress'
                        ? AppColors.appBar
                        : (currentStatus == 'Delivered'
                            ? AppColors.greyIcon.withAlpha(50)
                            : AppColors.greyIcon.withAlpha(50)),
              ),
              OrderProgressConnector(isCompleted: currentStatus == 'Delivered'),

              // Delivered Step
              OrderStatusStep(
                icon: Icons.home_outlined,
                label: 'Delivered',
                isCompleted: currentStatus == 'Delivered',
                isActive: currentStatus == 'Delivered',
                iconColor:
                    currentStatus == 'Delivered'
                        ? AppColors.mainColor
                        : AppColors.greyIcon,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

