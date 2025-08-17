import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';

class NonProviderBillDialog extends StatefulWidget {
  final String title;
  final bool? isInstallment;
  const NonProviderBillDialog({super.key, required this.title, this.isInstallment =false});

  @override
  State<NonProviderBillDialog> createState() => _NonProviderBillDialogState();
}

class _NonProviderBillDialogState extends State<NonProviderBillDialog> {
  bool proceedToPay = false;
  String? selectedCategory;
  final List<String> categories = [
    'North Cairo',
    'South Cairo',
    'East Cairo',
    'West Cairo',
  ];
  final List<String> installmentCategories = [
     'Bank Loan',
    'Car Installment',
    'Home Appliances',
    'Personal Loan',
  ];


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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.localizations.electricity,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: AppColors.textPrimary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(50.r),
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
                SizedBox(height: 5.h),
                Divider(color: AppColors.grey200),
                SizedBox(height: 5.h),

                // Area/Region Selection
                Text(
                        widget.isInstallment == true ? 'Select Installment Type' : 'Select Area',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 5.h),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 2.h,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.textTertiary),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedCategory,
                      hint: Text(
                        widget.isInstallment == true ? 'Select Installment Type' : 'Select Area',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                      isExpanded: true,
                      items:
                      widget.isInstallment == true ?  installmentCategories.map((String category) {
                            return DropdownMenuItem<String>(
                              value:  category,
                              child: Text(
                                category,
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            );
                          }).toList()
                    
                         : categories.map((String category) {
                            return DropdownMenuItem<String>(
                              value:  category,
                              child: Text(
                                category,
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            );
                          }).toList(),
                      onChanged: (String? newValue) {
                        setDialogState(() {
                          selectedCategory = newValue;
                        });
                      },
                    ),
                  ),
                ),

                SizedBox(height: 12.h),

                // Account number input
                Text(
                  'Enter Account Number',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 5.h),
                CustomTextFormField(
                  hintText: '123456789',
                ),

                SizedBox(height: 16.h),

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
                          '${context.localizations.egp} 350',
                        ),
                        _buildDetailRow(context.localizations.dueDate, 'August 15, 2025'),
                        _buildDetailRow(
                          context.localizations.invoiceNumber,
                          'ELC12345678',
                        ),
                      ],
                    ),
                  ),
                ],

                // Action button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => _handleButtonPress(setDialogState),
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
                        fontSize: 14.sp,
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
      builder:
          (context) => AlertDialog(
            insetPadding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 50.h,
            ),
            backgroundColor: AppColors.background,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.check_circle, color: Colors.green, size: 80.sp),
                SizedBox(height: 20.h),
                Text(
                  context.localizations.successfulPayment,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  context.localizations.paymentCompletedSuccessfully,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(
                      context.localizations.backToServices,
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
  }
}

