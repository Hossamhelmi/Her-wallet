import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/constants/app_sizes.dart';
import 'package:her_wallet/core/constants/app_text_styles.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/features/onboarding/widgets/arc_arrow_progress.dart';
import 'package:her_wallet/features/onboarding/widgets/onboarding_page_model.dart';

class OnboardingPagePresenter extends StatefulWidget {
  final List<OnboardingPageModel> pages;
  final VoidCallback? onSkip;
  final VoidCallback? onFinish;

  const OnboardingPagePresenter({
    super.key,
    required this.pages,
    this.onSkip,
    this.onFinish,
  });

  @override
  State<OnboardingPagePresenter> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPagePresenter> {
  // Store the currently visible page
  int _currentPage = 0;
  // Define a controller for the pageview
  final PageController _pageController = PageController(initialPage: 0);
  double get progressAngle {
    switch (_currentPage) {
      case 0:
        return pi / 2; // 90 degrees (quarter circle)
      case 1:
        return pi; // 180 degrees (half circle)
      case 2:
        return 3 * pi / 2; // 270 degrees (three quarters)
      default:
        return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.h, right: 25.w),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.login,
                        );
                      },
                      style: TextButton.styleFrom(
                        minimumSize: Size(60.w, 44.h),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        context.localizations.skip,
                        style: AppStyles.bodyL.copyWith(
                          color: AppColors.textSecondary,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Main content area
              Expanded(
                flex: 7,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: widget.pages.length,
                  onPageChanged: (idx) {
                    // Change current page when pageview changes
                    setState(() {
                      _currentPage = idx;
                    });
                  },
                  itemBuilder: (context, idx) {
                    final item = widget.pages[idx];
                    return Column(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 0),
                            margin: EdgeInsets.all(AppSizes.paddingL.w),
                            child: Stack(
                              alignment: AlignmentDirectional.bottomCenter,
                              children: [
                                Container(
                                  height: 220.h,
                                  decoration: BoxDecoration(
                                    color: item.bgColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(180.r),
                                      topRight: Radius.circular(180.r),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  item.imagePath,
                                  fit: BoxFit.contain,
                                  height: 400.h,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      height: 300.h,
                                      width: 200.w,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(
                                          20.r,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.image_not_supported,
                                        size: 48.r,
                                        color: Colors.grey,
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),

              // Page indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    widget.pages
                        .map(
                          (item) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
                              width:
                                  _currentPage == widget.pages.indexOf(item)
                                      ? 80
                                      : 8,
                              height: 8,
                              margin: EdgeInsets.all(2.w),
                              decoration: BoxDecoration(
                                color:
                                    _currentPage == widget.pages.indexOf(item)
                                        ? AppColors.primary
                                        : AppColors.iconGreyTertiary,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ),
                        )
                        .toList(),
              ),
              SizedBox(height: 10.h),
              // Text content
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        widget.pages[_currentPage].title,
                        style: AppStyles.titleL.copyWith(fontSize: 20.sp),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      child: Text(
                        widget.pages[_currentPage].description,
                        style: AppStyles.bodyL.copyWith(
                          fontSize: 14.sp,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      if (_currentPage < widget.pages.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.login,
                        );
                      }
                    },
                    child: ArcArrowProgress(angle: progressAngle, size: 60.r),
                  ),
                ),
              ),
              SizedBox(height: 35.h),
            ],
          ),
        ),
      ),
    );
  }
}
