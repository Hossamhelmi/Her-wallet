import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';

class PaymentServiceDialog extends StatefulWidget {
  final String title;
  final List<String> serviceTypes;
  final bool hasAmountFields;

  const PaymentServiceDialog({
    super.key,
    required this.title,
    this.serviceTypes = const [],
    this.hasAmountFields = false,
  });

  @override
  State<PaymentServiceDialog> createState() => _PaymentServiceDialogState();
}

class _PaymentServiceDialogState extends State<PaymentServiceDialog> {
  bool proceedToPay = false;
  int? selectedProviderIndex;
  int? selectedServiceTypeIndex;
  final List<String> providerNames = ['Vodafone', 'Orange', 'Etisalat', 'WE'];

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setDialogState) {
        return AlertDialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 10.w),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header with close button
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: AppColors.textPrimary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.close,
                          color: AppColors.textPrimary,
                          size: 18.sp,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Divider(color: AppColors.grey200),
                SizedBox(height: 16.h),

                // Provider selection
                Text(
                  context.localizations.chooseYourProvider,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                if (selectedProviderIndex == null)
                  Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: Text(
                      'Please select a provider to continue',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                SizedBox(height: 12.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      4,
                      (index) => Padding(
                        padding: EdgeInsets.only(right: 12.w),
                        child: GestureDetector(
                          onTap: () {
                            setDialogState(() {
                              selectedProviderIndex = index;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(8.w),
                            width: 70.w,
                            height: 85.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:
                                    selectedProviderIndex == index
                                        ? AppColors.mainColor
                                        : AppColors.textTertiary,
                                width: selectedProviderIndex == index ? 2 : 1,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/vodafone.png',
                                  width: 35.w,
                                  height: 40.h,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  providerNames[index],
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16.h),

                // Service types (shown only when provider is selected)
                if (widget.serviceTypes.isNotEmpty &&
                    selectedProviderIndex != null) ...[
                  Wrap(
                    spacing: 10.w,
                    runSpacing: 8.h,
                    children: List.generate(
                      widget.serviceTypes.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedServiceTypeIndex = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 8.h,
                            horizontal: 16.w,
                          ),
                          decoration: BoxDecoration(
                            color:
                                selectedServiceTypeIndex == index
                                    ? AppColors.mainColor.withOpacity(0.1)
                                    : AppColors.backgroundprimary,
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(
                              color:
                                  selectedServiceTypeIndex == index
                                      ? AppColors.mainColor
                                      : AppColors.textTertiary,
                              width: selectedServiceTypeIndex == index ? 2 : 1,
                            ),
                          ),
                          child: Text(
                            widget.serviceTypes[index],
                            style: TextStyle(
                              color:
                                  selectedServiceTypeIndex == index
                                      ? AppColors.mainColor
                                      : AppColors.textPrimary,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                ],

                // Phone number input (shown only when provider is selected)
                if (selectedProviderIndex != null) ...[
                  Text(
                    context.localizations.enterPhoneNumberLandline,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  CustomTextFormField(
                    hintText: '01213154155',
                    suffixIcon: Icon(Icons.phone_outlined, size: 20.sp),
                  ),
                  SizedBox(height: 16.h),
                ],

                // Amount fields (for top-up services, shown only when provider is selected)
                if (widget.hasAmountFields &&
                    selectedProviderIndex != null) ...[
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.localizations.rechargeAmount,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            CustomTextFormField(hintText: '50'),
                          ],
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.localizations.amountToBePaid,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            CustomTextFormField(hintText: '55'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                ],

                // Bill details (shown after clicking Next)
                if (proceedToPay) ...[
                  Container(
                    margin: EdgeInsets.only(bottom: 16.h),
                    decoration: BoxDecoration(
                      color: AppColors.grey200,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    padding: EdgeInsets.all(16.w),
                    child: Column(
                      children: [
                        _buildDetailRow(
                          context.localizations.billAmount,
                          '${context.localizations.egp} 250',
                        ),
                        _buildDetailRow(context.localizations.dueDate, 'June 30, 2025'),
                        _buildDetailRow(
                          context.localizations.invoiceNumber,
                          'TFHSK58424E',
                        ),
                      ],
                    ),
                  ),
                ],

                // Action button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:
                        selectedProviderIndex != null
                            ? () => _handleButtonPress(setDialogState)
                            : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(
                      proceedToPay ? context.localizations.payNow : context.localizations.next,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 14.sp, color: AppColors.textSecondary),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  void _handleButtonPress(StateSetter setDialogState) {
    if (proceedToPay) {
      // Handle payment logic
      Navigator.of(context).pop();
      _showSuccessDialog();
    } else {
      setDialogState(() {
        proceedToPay = true;
      });
    }
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            insetPadding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 50.h,
            ),
            backgroundColor: AppColors.background,
            elevation: 8,
            shadowColor: Colors.black.withOpacity(0.3),
            content: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 80.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: AppColors.success.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.check_circle,
                      color: AppColors.success,
                      size: 48.sp,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    context.localizations.successfulPayment,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    context.localizations.paymentCompletedSuccessfully,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      style: ElevatedButton.styleFrom(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                      child: Text(
                        context.localizations.backToServices,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

