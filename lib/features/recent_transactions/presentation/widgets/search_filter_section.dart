import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/search_field.dart';
import '../../../home/presentation/widgets/buttons/filter_button.dart';
import '../../../home/presentation/widgets/dialogs/filter_dialog.dart';

class SearchFilterSection extends StatelessWidget {
  final String? selectedType;
  final ValueChanged<String>? onFilterChanged;
  final String hintText;
  final bool isTransaction;

  const SearchFilterSection({
    super.key,
    this.selectedType,
    this.onFilterChanged,
    required this.hintText, required this.isTransaction,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.appBar,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.r),
              bottomRight: Radius.circular(30.r),
            ),
          ),
          height: 80.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          child: Row(
            children: [
              Expanded(
                child: SearchField(
                  hintText: hintText,
                  onChanged: (value) {
                    // Implement search functionality
                  },
                ),
              ),
              SizedBox(width: 12.w),
              FilterButton(onPressed: () => isTransaction ? _showFilterDialog(context) : null),
            ],
          ),
        ),
      ],
    );
  }

  void _showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => FilterDialog(
            selectedType: selectedType,
            onFilterChanged: onFilterChanged,
          ),
    );
  }
}
