import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'booking_success_dialog.dart';

class BookingConfirmationDialog extends StatelessWidget {
  final String selectedDate;
  final String selectedTime;
  final String selectedType;

  const BookingConfirmationDialog({
    super.key,
    required this.selectedDate,
    required this.selectedTime,
    required this.selectedType,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(15.w),
      insetPadding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 10.h),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeader(context),
          _buildBookingDetails(),
          SizedBox(height: 12.h),
          _buildSessionFeeInfo(),
          SizedBox(height: 12.h),
          _buildActionButtons(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        children: [
          Text(
            context.localizations.confirmOrder,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: Icon(Icons.close, color: AppColors.textPrimary, size: 16.sp),
            onPressed: () => Navigator.of(context).pop(),
            padding: EdgeInsets.all(4.w),
          ),
        ],
      ),
    );
  }

  Widget _buildBookingDetails() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey200,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.all(12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'booking details',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          _buildDetailRow('Mentor:', 'Dr.Sara Samir'),
          SizedBox(height: 8.h),
          _buildDetailRow('Date:', 'June 30,2025'),
          SizedBox(height: 8.h),
          _buildDetailRow('Time:', '11:00 AM'),
          SizedBox(height: 8.h),
          _buildDetailRow('Session Type:', 'Online'),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 12.sp, color: AppColors.textSecondary),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 12.sp, color: AppColors.textPrimary),
        ),
      ],
    );
  }

  Widget _buildSessionFeeInfo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.mainColor.withAlpha(50),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Icon(
                Icons.info_outline,
                color: AppColors.textPrimary,
                size: 16.sp,
              ),
              3.verticalSpace,
            ],
          ),
          SizedBox(width: 8.w),
          Text(
            'Session fee:',
            style: TextStyle(fontSize: 14.sp, color: AppColors.textSecondary),
          ),
          Text(
            'EGP 300',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              showDialog(
                context: context,
                builder:
                    (context) => BookingSuccessDialog(
                      selectedDate: selectedDate,
                      selectedTime: selectedTime,
                      selectedType: selectedType,
                    ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.mainColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Text(
              context.localizations.pay,
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: AppColors.textPrimary,
              side: BorderSide(color: AppColors.grey200, width: 1.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              context.localizations.cancel,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
