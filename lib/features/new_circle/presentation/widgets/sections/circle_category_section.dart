import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../components/form_field_label.dart';

class CircleCategorySection extends StatefulWidget {
  const CircleCategorySection({super.key});

  @override
  State<CircleCategorySection> createState() => _CircleCategorySectionState();
}

class _CircleCategorySectionState extends State<CircleCategorySection> {
  String? selectedCategory;


  @override
  Widget build(BuildContext context) {
      final List<String> categories = [
    context.localizations.healthCategory,
    context.localizations.educationCategory,
    context.localizations.financeCategory,
    context.localizations.lifestyleCategory,
  ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormFieldLabel(label: context.localizations.category),
        SizedBox(height: 8.h),
        Container(
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
              style: TextStyle(color: AppColors.textTertiary, fontSize: 14.sp),
            ),
            onChanged: (value) {
              setState(() {
                selectedCategory = value;
              });
            },
            style: TextStyle(color: AppColors.textPrimary, fontSize: 14.sp),
            icon: Icon(
              Icons.arrow_drop_down,
              color: AppColors.textTertiary,
              size: 24.r,
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
      ],
    );
  }
}

