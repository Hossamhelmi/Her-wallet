import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.favorites),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
              child: Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: List.generate(
                  6,
                  (index) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.productDetails);
                    },
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 2.w),
                          decoration: BoxDecoration(
                            color: AppColors.backgroundprimary,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110.h,
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
                                    'assets/images/bag.jpg',
                                    height: 130.h,
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.42,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),

                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 3.h,
                                  horizontal: 8.w,
                                ),
                                child: Text(
                                  context.localizations.stylishHandbag,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    height: 1.0,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 3.h,
                                  horizontal: 8.w,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      context.localizations.priceEgp450,
                                      style: TextStyle(
                                        color: AppColors.mainColor,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    Text(
                                      context.localizations.fiveDaysAgo,
                                      style: TextStyle(
                                        color: AppColors.textSecondary,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 8.w,
                          top: 10.h,
                          child: CircleAvatar(
                            radius: 16.r,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.favorite,
                              color: AppColors.redIcon,
                              size: 24.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Add your favorite items list here
          ],
        ),
      ),
    );
  }
}

