import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/bazar/presentation/screens/bazar_screen.dart';
import 'package:her_wallet/features/circles/presentation/screens/circles_screen.dart';
import 'package:her_wallet/features/home/presentation/screens/home_screen.dart';
import 'package:her_wallet/features/more/presentation/cubit/more_cubit.dart';
import 'package:her_wallet/features/more/presentation/screens/more_screen.dart';
import 'package:her_wallet/features/subscription/presentation/cubits/subscription_cubit.dart';
import 'package:her_wallet/features/subscription/presentation/screens/subscription_screen.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  static List<Widget> screens = [
    HomeScreen(),
    BlocProvider(
      create: (context) => SubscriptionCubit(),
      child: SubscriptionScreen(),
    ),
    CirclesScreen(),
    BazarScreen(),
    BlocProvider(create: (context) => MoreCubit(), child: MoreScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> navigationItems = [
      {'label': context.localizations.home, 'icon': 'home', 'index': 0},
      {
        'label': context.localizations.subscriptions,
        'icon': 'mage_box',
        'index': 1,
      },
      {'label': context.localizations.circle, 'icon': 'people', 'index': 2},
      {
        'label': context.localizations.bazzar,
        'icon': 'shopping-cart',
        'index': 3,
      },
      {'label': context.localizations.more, 'icon': 'more', 'index': 4},
    ];
    return BottomAppBar(
      height: 70.h,
      color: Colors.white,
      elevation: 8,
      padding: EdgeInsets.zero,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.black.withOpacity(0.1),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:
              navigationItems
                  .map(
                    (item) => _buildNavigationItem(
                      item['label'],
                      item['icon'],
                      item['index'],
                    ),
                  )
                  .toList(),
        ),
      ),
    );
  }

  Widget _buildNavigationItem(String name, String iconPath, int index) {
    final isSelected = currentIndex == index;

    return Expanded(
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          overlayColor: const WidgetStatePropertyAll(Colors.transparent),
          onTap: () => onTap(index),
          borderRadius: BorderRadius.circular(20.r),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              color:
                  isSelected
                      ? AppColors.appBar.withOpacity(0.3)
                      : Colors.transparent,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/icons/$iconPath.png',
                  width: 22.w,
                  height: 22.h,
                  color: isSelected ? AppColors.appBar : AppColors.greyIcon,
                ),
                SizedBox(height: 4.h),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: isSelected ? AppColors.appBar : AppColors.greyIcon,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
