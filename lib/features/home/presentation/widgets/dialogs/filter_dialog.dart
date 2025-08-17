import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';
import 'package:her_wallet/core/shared/widgets/date_picker_field.dart';
import '../buttons/dialog_action_button.dart';
import '../chips/custom_chip.dart';

class FilterDialog extends StatefulWidget {
  final String? selectedType;
  final ValueChanged<String>? onFilterChanged;

  const FilterDialog({super.key, this.selectedType, this.onFilterChanged});

  @override
  State<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  late String _selectedType;
 

  @override
  void initState() {
    super.initState();
    _selectedType = widget.selectedType ?? context.localizations.all;
  }

  @override
  Widget build(BuildContext context) {
 
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      backgroundColor: AppColors.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      contentPadding: EdgeInsets.all(16.w),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildHeader(),
            SizedBox(height: 5.h),
            _buildTransactionTypeSection(),
            SizedBox(height: 5.h),
            _buildDateRangeSection(),
            _buildAmountRangeSection(),
            _buildButtonsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            context.localizations.filterTransactions,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        SizedBox(width: 5.w),
        IconButton(
          icon: Icon(Icons.close, color: AppColors.greyIcon, size: 24.w),
          onPressed: () => Navigator.of(context).pop(),
          padding: EdgeInsets.all(8.w),
          constraints: BoxConstraints(minWidth: 44.w, minHeight: 44.h),
        ),
      ],
    );
  }

  Widget _buildTransactionTypeSection() {
        final List<String> transactionTypes = [
    context.localizations.all,
    context.localizations.incoming,
    context.localizations.outgoing,
  ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localizations.transactionsType,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textSecondary,
          ),
        ),
        SizedBox(height: 5.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                transactionTypes.map((type) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomChip(
                      value: type,
                      isSelected: _selectedType == type,
                      onTap:
                          () => setState(() {
                            _selectedType = type;
                          }),
                    ),
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildDateRangeSection() {
    final TextEditingController fromDateController = TextEditingController();
    final TextEditingController toDateController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localizations.dateRange,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textSecondary,
          ),
        ),
        SizedBox(height: 5.h),
        Row(
          children: [
            Expanded(
              child: DatePickerField(
                controller: fromDateController,
                label: context.localizations.from,
                hintText: context.localizations.defaultHintDate,
                onTap: () {
                   showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  ).then((selectedDate) {
                    if (selectedDate != null) {
                      // Handle the selected date
                      // For example, update the text field with the selected date
                    }
                    fromDateController.text =
                        selectedDate != null
                            ? "${selectedDate.toLocal()}".split(' ')[0]
                            : '';
                  });
                },
              ),
            ),
            SizedBox(width: 24.w),
            Expanded(
              child: DatePickerField(
                controller: toDateController,
                label: context.localizations.to,
                hintText: context.localizations.defaultHintDate,
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  ).then((selectedDate) {
                    if (selectedDate != null) {
                      // Handle the selected date
                      // For example, update the text field with the selected date
                    }
                    toDateController.text =
                        selectedDate != null
                            ? "${selectedDate.toLocal()}".split(' ')[0]
                            : '';
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAmountRangeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Amount Range',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textSecondary,
          ),
        ),
        SizedBox(height: 5.h),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localizations.from,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  CustomTextFormField(
                    hintstyle: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 12.sp,
                    ),
                
                    hintText: '0',
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localizations.to,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  CustomTextFormField(
                    hintstyle: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 10.sp,
                    ),
                    
                    hintText: '1000',
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildButtonsSection() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: DialogActionButton(
              text: context.localizations.apply,
              isPrimary: true,
              onTap: () {
                //  widget.onFilterChanged(_selectedType);
                Navigator.of(context).pop();
              },
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: DialogActionButton(
              text: context.localizations.reset,
              isPrimary: false,
              onTap: () {
                setState(() {
                  _selectedType = context.localizations.all;
                });
                // widget.onFilterChanged(context.localizations.all) ;
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}

