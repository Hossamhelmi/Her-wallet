import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_decorated_container/flutter_decorated_container.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../../../features/new_circle/presentation/widgets/components/form_field_label.dart';

class ImageSection extends StatelessWidget {
  final String title;
  const ImageSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormFieldLabel(label: title),
        DecoratedContainer(
          strokeColor: AppColors.textTertiary,
          child: SizedBox(
            width: double.infinity,
            height: 150.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.upload, size: 40.w, color: AppColors.textTertiary),
                SizedBox(height: 8.h),
                Text(
                  context.localizations.chooseImageFromGallery,
                  style: TextStyle(
                    color: AppColors.textTertiary,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 12.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 8.h,
                    ),
                  ),
                  child: Text(
                    context.localizations.selectImage,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

