import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
import 'package:her_wallet/features/new_circle/presentation/widgets/widgets.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
    context.localizations.clothing,
    context.localizations.accessories,
    context.localizations.shoes,
    context.localizations.skirts,
    context.localizations.bags,
    context.localizations.jewelry,
    context.localizations.electronics,
    context.localizations.homeDecor,
  ];
    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.addNewProduct),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: FormFieldLabel(label: context.localizations.productName),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: SizedBox(
                width: double.infinity,
                height: 60.h,
                child: CustomTextFormField(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  hintText: context.localizations.enterProductName,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: FormFieldLabel(label: context.localizations.productDescription),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: SizedBox(
                width: double.infinity,
                height: 150.h,
                child: CustomTextFormField(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.textTertiary),
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.textTertiary),
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.mainColor),
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  ),
                  keyboardType: TextInputType.multiline,
                  minLines: 4,
                  maxLines: 4,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 8.h,
                  ),
                  hintText: context.localizations.describeYourProduct,
                  hintstyle: TextStyle(
                    color: AppColors.textTertiary,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: FormFieldLabel(label: context.localizations.category),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Container(
                width: double.infinity,
                height: 50.h,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.textTertiary),
                  borderRadius: BorderRadius.circular(18.r),
                ),
                child: DropdownButton<String>(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  dropdownColor: AppColors.background,
                  isExpanded: true,
                  underline: SizedBox(),
                  value: selectedCategory,
                  hint: Text(
                    context.localizations.selectCategory,
                    style: TextStyle(
                      color: AppColors.textTertiary,
                      fontSize: 14.sp,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      selectedCategory = value;
                    });
                  },
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 14.sp,
                  ),
                  icon: Icon(
                    Icons.arrow_downward_rounded,
                    color: AppColors.textTertiary,
                    size: 24.sp,
                  ),
                  items:
                      categories.map((category) {
                        return DropdownMenuItem<String>(
                          value: category,
                          child: Text(category),
                        );
                      }).toList(),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: FormFieldLabel(label: 'Price (EGP)'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: SizedBox(
                width: double.infinity,
                height: 60.h,
                child: CustomTextFormField(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  hintText: context.localizations.enterThePrice,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: FormFieldLabel(label: context.localizations.productImage),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width:
                        (1.sw - 48.w - 15.w) / 4, // Dynamic width calculation
                    height: 80.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.textTertiary),
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add, size: 24.sp),
                      ),
                    ),
                  ),
                  Container(
                    width: (1.sw - 48.w - 15.w) / 4,
                    height: 80.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.textTertiary),
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add, size: 24.sp),
                      ),
                    ),
                  ),
                  Container(
                    width: (1.sw - 48.w - 15.w) / 4,
                    height: 80.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.textTertiary),
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add, size: 24.sp),
                      ),
                    ),
                  ),
                  Container(
                    width: (1.sw - 48.w - 15.w) / 4,
                    height: 80.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.textTertiary),
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add, size: 24.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                'You can add up to 4 images',
                style: TextStyle(
                  color: AppColors.textTertiary,
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(context.localizations.postProduct),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

