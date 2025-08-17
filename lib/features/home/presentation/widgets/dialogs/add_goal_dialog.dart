import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../buttons/dialog_action_button.dart';
import 'dialog_header.dart';
import 'dialog_input_field.dart';

class AddGoalDialog extends StatelessWidget {
  final TextEditingController goalNameController = TextEditingController();
  final TextEditingController totalAmountController = TextEditingController();
  final TextEditingController dailyTargetController = TextEditingController();
  final TextEditingController goalDateController = TextEditingController();

  AddGoalDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(24.w),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DialogHeader(
              title: context.localizations.addNewGoal,
              onClose: () => Navigator.of(context).pop(),
            ),
            DialogInputField(
              label: context.localizations.goalName,
              hintText: context.localizations.enterGoalName,
            ),
            DialogInputField(
              label: context.localizations.totalAmount,
              hintText: context.localizations.enterTotalAmount,
              keyboardType: TextInputType.number,
              suffixIcon: Icon(
                Icons.attach_money_outlined,
                color: AppColors.appBar,
                size: 20.w,
              ),
            ),
            DialogInputField(
              label: context.localizations.dailyTarget,
              hintText: context.localizations.enterDailyTarget,
              keyboardType: TextInputType.number,
              suffixIcon: Icon(
                Icons.attach_money_outlined,
                color: AppColors.appBar,
                size: 20.w,
              ),
            ),
            DialogInputField(
              controller: goalDateController,
              label: context.localizations.goalDate,
              hintText: context.localizations.goalDatePlaceholder,
              keyboardType: TextInputType.datetime,
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.calendar_today_outlined,
                  color: AppColors.appBar,
                  size: 20.w,
                ),
                onPressed: () {
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
                    goalDateController.text =
                        selectedDate != null
                            ? "${selectedDate.toLocal()}".split(' ')[0]
                            : '';
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DialogActionButton(
                    text: context.localizations.saveGoal,
                    isPrimary: true,
                    onTap: () {
                      // Implement save goal functionality
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: DialogActionButton(
                    text: context.localizations.cancel,
                    isPrimary: false,
                    onTap: () => Navigator.of(context).pop(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
