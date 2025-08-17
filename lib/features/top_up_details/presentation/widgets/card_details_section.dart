import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';
import '../../../home/presentation/widgets/checkboxes/save_card_checkbox.dart';

class CardDetailsSection extends StatelessWidget {
  final bool saveCardForFuture;
  final ValueChanged<bool> onSaveCardChanged;

  const CardDetailsSection({
    super.key,
    required this.saveCardForFuture,
    required this.onSaveCardChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Material(
        borderRadius: BorderRadius.circular(12.r),
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.1),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.localizations.cardDetails,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  context.localizations.cardNumber,
                  style: TextStyle(fontSize: 14.sp, color: Colors.black54),
                ),
                SizedBox(
                  height: 55.h,
                  child: CustomTextFormField(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 14.h,
                    ),
                    hintText: context.localizations.xxxxForCards,
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.localizations.expiryDate,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 55.h,
                            child: CustomTextFormField(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 8.h,
                              ),
                              hintText: context.localizations.mmYY,
                              keyboardType: TextInputType.datetime,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.localizations.cvv,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 55.h,
                            child: CustomTextFormField(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 8.h,
                              ),
                              hintText: context.localizations.cvv,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Text(
                  context.localizations.cardholderName,
                  style: TextStyle(fontSize: 14.sp, color: Colors.black54),
                ),
                SizedBox(
                  height: 55.h,
                  child: CustomTextFormField(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 8.h,
                    ),
                    hintText: context.localizations.enterCardholderName,
                    keyboardType: TextInputType.text,
                  ),
                ),
                SaveCardCheckbox(
                  value: saveCardForFuture,
                  onChanged: onSaveCardChanged,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

