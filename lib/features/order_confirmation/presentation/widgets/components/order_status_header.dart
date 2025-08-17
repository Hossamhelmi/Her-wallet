import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderStatusHeader extends StatelessWidget {
  final String status;
  final Color statusColor;

  const OrderStatusHeader({
    super.key,
    required this.status,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          context.localizations.orderStatus,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: statusColor.withAlpha(50),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Text(
            status,
            style: TextStyle(
              fontSize: 10.sp,
              color: statusColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

