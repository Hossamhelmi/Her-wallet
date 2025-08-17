import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/constants/app_text_styles.dart';
import 'package:her_wallet/core/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToOnboarding();
  }

  _navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.pushReplacementNamed(context, AppRoutes.onboarding);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Left side layered shapes
          Positioned(
            left: -150.w,
            bottom: 200.h,
            child: Transform.rotate(
              angle: 0.7,
              child: Container(
                width: 250.w,
                height: 200.h,
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: AppColors.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
            ),
          ),

          Positioned(
            left: -150.w,
            bottom: 60.h,
            child: Transform.rotate(
              angle: -0.7,
              child: Container(
                width: 250.w,
                height: 200.h,
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
            ),
          ),

          // Right side layered shapes
          Positioned(
            right: -150.w,
            bottom: 200.h,
            child: Transform.rotate(
              angle: -0.7,
              child: Container(
                width: 250.w,
                height: 200.h,
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: AppColors.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
            ),
          ),

          Positioned(
            right: -150.w,
            bottom: 60.h,
            child: Transform.rotate(
              angle: 0.7,
              child: Container(
                width: 250.w,
                height: 200.h,
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
            ),
          ),

          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Wallet icon
                Image.asset(
                  'assets/images/1x.png',
                  width: 180.w,
                  height: 150.h,
                ),

                SizedBox(height: 10.h),

                Text(
                  context.localizations.appName,
                  style: AppStyles.titleXL.copyWith(fontSize: 28.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

