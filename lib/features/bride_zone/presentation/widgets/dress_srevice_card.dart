import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/features/web_view/web_view.dart';

class DressServiceCard extends StatelessWidget {
  final String dressImage;
  final String dressPrice;

  const DressServiceCard({
    super.key,
    required this.dressImage,
    required this.dressPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      decoration: BoxDecoration(
        color: AppColors.backgroundprimary,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                topRight: Radius.circular(16.r),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                topRight: Radius.circular(16.r),
              ),
              child: Image.asset(
                dressImage,
                width: MediaQuery.of(context).size.width * 6.5 / 16,
                fit: BoxFit.fill,
              ),
            ),
          ),

          SizedBox(height: 10.h),

          SizedBox(
            width: MediaQuery.of(context).size.width * 6.5 / 16,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 3.0.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Dar Al Arous',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      height: 1.0.h,
                    ),
                  ),
                  Spacer(),
                  Text(
                    dressPrice,
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Text(
              'Mermaid wedding dress',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
                height: 1.5.h,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: 30.h,
              width: MediaQuery.of(context).size.width * 0.38,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => WebViewScreen(
                            url: 'https://www.davidsbridal.com/',
                          ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                ),
                child: Text(context.localizations.viewDetails),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
