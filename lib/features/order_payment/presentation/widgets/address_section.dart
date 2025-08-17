import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          _buildAddressHeader(context),
          Divider(color: AppColors.grey200),
          SizedBox(height: 4.h),
          _buildDefaultAddress(context),
          SizedBox(height: 4.h),
          _buildAddNewAddressButton(context),
        ],
      ),
    );
  }

  Widget _buildAddressHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.localizations.address,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                AppColors.backgroundprimary,
              ),

              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  side: BorderSide(color: AppColors.grey200, width: 0.5.w),
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              context.localizations.change,
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDefaultAddress(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.grey200, width: 1.w),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.mainColor.withAlpha(35),
            child: Icon(
              Icons.home_outlined,
              color: AppColors.mainColor,
              size: 20.sp,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.localizations.homeAddress,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  context.localizations.saraSmith,
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  context.localizations.addressDetails,
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  context.localizations.phoneNumber,
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: AppColors.greenIcon.withAlpha(50),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Text(
              context.localizations.defaultAddress,
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.greenIcon,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddNewAddressButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      child: GestureDetector(
        onTap: () => _showAddAddressDialog(context),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.w),
              width: 44.w,
              decoration: BoxDecoration(
                color: AppColors.mainColor.withAlpha(20),
                borderRadius: BorderRadius.circular(22.r),
              ),
              child: Icon(Icons.add, color: AppColors.mainColor, size: 24.sp),
            ),
            SizedBox(width: 12.w),
            Text(
              context.localizations.addNewAddress,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.mainColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAddAddressDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  context.localizations.addNewAddress,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: AppColors.greyPrimary,
                  size: 24.sp,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: SizedBox(
              width: 1.sw * 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDialogField(
                    context.localizations.fullName,
                    context.localizations.enterYourName,
                  ),
                  _buildDialogField(context.localizations.phone, context.localizations.enterNumber),
                  Text(
                    context.localizations.city,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey200),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      underline: SizedBox(),
                      items: <DropdownMenuItem<String>>[
                        DropdownMenuItem(
                          child: Text(context.localizations.cairo),
                          value: context.localizations.cairo,
                        ),
                        DropdownMenuItem(
                          child: Text(context.localizations.alexandria),
                          value: context.localizations.alexandria,
                        ),
                        DropdownMenuItem(
                          child: Text(context.localizations.giza),
                          value: context.localizations.giza,
                        ),
                      ],
                      onChanged: (value) {},
                      hint: Text(
                        context.localizations.selectCity,
                        style: TextStyle(fontSize: 14.sp),
                      ),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  _buildDialogField(
                    context.localizations.district,
                    context.localizations.enterDistrictName,
                  ),
                  _buildDialogField(
                    context.localizations.streetAndBuilding,
                    context.localizations.enterStreetAndBuilding,
                  ),
                  _buildDialogField(
                    context.localizations.paymentAdditionalNotes,
                    context.localizations.enterAdditionalNotes,
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.grey200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: Text(
                      context.localizations.close,
                      style: TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle save action
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: Text(
                      context.localizations.save,
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
          ],
        );
      },
    );
  }

  Widget _buildDialogField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
        CustomTextFormField(
          hintText: hint,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 4.h,
          ),
        ),
      ],
    );
  }
}

