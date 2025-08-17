import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class SaveCardCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const SaveCardCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          constraints: BoxConstraints(minWidth: 44.w, minHeight: 35.h),
          child: Transform.scale(
            scale: 0.8,
            child: Theme(
              data: Theme.of(context).copyWith(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity(horizontal: -2, vertical: -2),
              ),
              child: Column(
                children: [
                  Checkbox(
                    value: value,
                    onChanged: (newValue) => onChanged(newValue ?? false),
                    activeColor: AppColors.mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.r),
                    ),
                  ),
                  SizedBox(height: 1.h),
                ],
              ),
            ),
          ),
        ),
        Flexible(
          child: Text(
            context.localizations.saveCardForFuture,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.black54,
              height: 1.2,
            ),
            
          ),
        ),
      ],
    );
  }
}

