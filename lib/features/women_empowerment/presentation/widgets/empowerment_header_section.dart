import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/search_field.dart';

class EmpowermentHeaderSection extends StatelessWidget {
  final ValueChanged<String>? onSearchChanged;

  const EmpowermentHeaderSection({super.key, this.onSearchChanged});

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
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: SearchField(
            hintText: context.localizations.searchForProduct,
            onChanged: onSearchChanged ?? (value) {},
          ),
        ),
      ],
    );
  }
}
