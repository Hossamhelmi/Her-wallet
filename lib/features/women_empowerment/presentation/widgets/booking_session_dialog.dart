import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'booking_confirmation_dialog.dart';
import 'radio_selection_item.dart';

class BookingSessionDialog extends StatefulWidget {
  final String coachName;
  final String coachSpecialization;
  final String coachRating;
  final String coachImagePath;

  const BookingSessionDialog({
    super.key,
    required this.coachName,
    required this.coachSpecialization,
    required this.coachRating,
    required this.coachImagePath,
  });

  @override
  State<BookingSessionDialog> createState() => _BookingSessionDialogState();
}

class _BookingSessionDialogState extends State<BookingSessionDialog> {
  String selectedDate = 'June 30';
  String selectedTime = '10:00 AM';
  String selectedType = 'online';

  final List<String> dates = ['June 30', 'July 1', 'July 2'];
  final List<String> times = ['10:00 AM', '11:00 AM', '12:00 PM'];
  final List<String> types = ['online', 'In-person'];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(15.w),
      insetPadding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 10.h),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          const Divider(),
          _buildCoachInfo(),
          SizedBox(height: 8.h),
          _buildDateSelection(),
          SizedBox(height: 8.h),
          _buildTimeSelection(),
          SizedBox(height: 8.h),
          _buildSessionTypeSelection(),
          SizedBox(height: 12.h),
          _buildSessionFeeInfo(),
          SizedBox(height: 12.h),
          _buildActionButtons(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        Text(
          context.localizations.bookASession,
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
    );
  }

  Widget _buildCoachInfo() {
    return Row(
      children: [
        CircleAvatar(
          radius: 25.r,
          backgroundImage: AssetImage(widget.coachImagePath),
        ),
        SizedBox(width: 8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.coachName,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            Text(
              widget.coachSpecialization,
              style: TextStyle(
                fontSize: 11.sp,
                color: AppColors.textSecondary,
                height: 1.3,
              ),
            ),
            Text(
              '⭐ ${widget.coachRating}',
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDateSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Choose a session date',
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
                dates
                    .map(
                      (date) => RadioSelectionItem(
                        text: date,
                        isSelected: selectedDate == date,
                        onTap: () => setState(() => selectedDate = date),
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildTimeSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Choose a Time slot',
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
              times
                  .map(
                    (time) => RadioSelectionItem(
                      text: time,
                      isSelected: selectedTime == time,
                      onTap: () => setState(() => selectedTime = time),
                    ),
                  )
                  .toList(),
        ),
      ],
    );
  }

  Widget _buildSessionTypeSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Session Type',
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
              types
                  .map(
                    (type) => RadioSelectionItem(
                      text: type,
                      isSelected: selectedType == type,
                      onTap: () => setState(() => selectedType = type),
                    ),
                  )
                  .toList(),
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
                    (context) => BookingConfirmationDialog(
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
