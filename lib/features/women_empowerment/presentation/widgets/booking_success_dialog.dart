import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';

class BookingSuccessDialog extends StatelessWidget {
  final String selectedDate;
  final String selectedTime;
  final String selectedType;

  const BookingSuccessDialog({
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
          _buildSuccessImage(),
          SizedBox(height: 12.h),
          _buildSuccessMessage(context),
          _buildBookingDetails(),
          SizedBox(height: 12.h),
          _buildBackToHomeButton(context),
        ],
      ),
    );
  }

  Widget _buildSuccessImage() {
    return Image.asset(
      'assets/images/success.png',
      height: 100.h,
      width: 100.w,
    );
  }

  Widget _buildSuccessMessage(BuildContext context) {
    return Text(
      context.localizations.bookingConfirmedSuccessfully,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
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

  Widget _buildBackToHomeButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                context.localizations.backToHome,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
