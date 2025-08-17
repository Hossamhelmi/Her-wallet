import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../components/order_status_header.dart';
import '../components/order_progress_step.dart';
import '../components/order_progress_bar.dart';

class OrderProgressSection extends StatelessWidget {
  const OrderProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        
      ),
      child: Column(
        children: [
          OrderStatusHeader(
            status: context.localizations.awaitingConfirmation,
            statusColor: AppColors.greenIcon,
          ),
          SizedBox(height: 10.h),
          _buildProgressTracker(context),
        ],
      ),
    );
  }

  Widget _buildProgressTracker(BuildContext context) {
    return Row(
      children: [
        OrderProgressStep(
          icon: Icons.check_outlined,
          label: context.localizations.review,
          isCompleted: true,
        ),
        OrderProgressBar(progress: 1.0),
        OrderProgressStep(
          icon: Icons.check_outlined,
          label: context.localizations.payment,
          isCompleted: true,
        ),
        OrderProgressBar(progress: 1.0),
        OrderProgressStep(
          icon: Icons.local_shipping,
          label: context.localizations.confirm,
          isCompleted: false,
          isActive: true,
        ),
      ],
    );
  }
}

