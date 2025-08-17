import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailRowCard extends StatelessWidget {
  final String label;
  final String value;
  final Color valueColor;
  final double? valueFontSize;
  final FontWeight? labelWeight;
  final FontWeight? valueWeight;

  const DetailRowCard({
    super.key,
    required this.label,
    required this.value,
    required this.valueColor,
    this.valueFontSize,
    this.labelWeight,
    this.valueWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14.sp,
                color: labelWeight != null ? Colors.black : Colors.black54,
                fontWeight: labelWeight ?? FontWeight.w400,
              ),
            ),
          ),
          Flexible(
            child: Text(
              value,
              style: TextStyle(
                fontSize: valueFontSize?.sp ?? 14.sp,
                color: valueColor,
                fontWeight: valueWeight ?? FontWeight.w600,
              ),
              textAlign: TextAlign.end,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
