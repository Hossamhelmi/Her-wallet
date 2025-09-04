import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/components/bottom_nav/custom_bottom_navigation.dart';
import 'package:her_wallet/core/shared/widgets/search_field.dart';
import 'package:her_wallet/features/home/presentation/widgets/buttons/filter_button.dart';
import 'package:her_wallet/features/home/presentation/widgets/home_sections/home_appbar_section.dart';
import 'package:her_wallet/features/home_layout/presentation/cubits/home_cubit.dart';
import 'package:her_wallet/features/home_layout/presentation/cubits/home_state.dart';
import 'package:her_wallet/features/new_circle/presentation/widgets/components/app_bar_extension.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  PreferredSizeWidget? _buildAppBar(int index, BuildContext context) {
    switch (index) {
      case 0:
        return HomeAppbarSection.build(context);
      case 1:
        return AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20.0.h),
            child: AppBarExtension(),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: AppColors.appBar,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,

          leading: Padding(
            padding: EdgeInsets.only(bottom: 5.h, left: 12.w),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 20.w,
              ),
              onPressed:
                  () => context.read<HomeLayoutCubit>().setCurrentIndex(0),
            ),
          ),

          centerTitle: false,
          title: Padding(
            padding: EdgeInsets.only(left: 35.0.w),
            child: Text(
              context.localizations.subscribtionBox,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        );
      case 2:
        return AppBar(
          backgroundColor: AppColors.appBar,

          centerTitle: false,
          title: Padding(
            padding: EdgeInsets.only(left: 35.0.w),
            child: Text(
              context.localizations.myCircle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
               leading: Padding(
            padding: EdgeInsets.only(bottom: 5.h, left: 12.w),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 20.w,
              ),
              onPressed:
                  () => context.read<HomeLayoutCubit>().setCurrentIndex(0),
            ),
          ),
        );
      case 3:
        return AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80.0.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 15.h,
                  ),
                  child: Row(
                    children: [
                      FilterButton(onPressed: () {}),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: SearchField(
                          hintText: context.localizations.searchForProduct,
                          onChanged: (value) {
                            // Implement search functionality
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: AppColors.appBar,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,

          centerTitle: false,
          title: Padding(
            padding: EdgeInsets.only(left: 35.0.w),
            child: Text(
              context.localizations.womensBazar,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
               leading: Padding(
            padding: EdgeInsets.only(bottom: 5.h, left: 12.w),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 20.w,
              ),
              onPressed:
                  () => context.read<HomeLayoutCubit>().setCurrentIndex(0),
            ),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: AppColors.backgroundprimary,
              child: Icon(
                Icons.shopping_bag_outlined,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(width: 10),
          ],
        );
      case 4:
        return AppBar(backgroundColor: AppColors.appBar);
      default:
        return AppBar(title: Text(context.localizations.appName));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
      builder: (context, state) {
        return PopScope(
           canPop: false, // ❌ prevent auto app close
        onPopInvokedWithResult: (didPop,result) {
          if (!didPop) {
            // If we’re not at the first tab, go back to index 0
            if (state.currentIndex != 0) {
              context.read<HomeLayoutCubit>().setCurrentIndex(0);
            } else {
              // If we are already at index 0 → exit app manually
              SystemNavigator.pop(); // or show a "Press again to exit" toast
            }
          }
        },
          child: Scaffold(
            appBar: _buildAppBar(state.currentIndex, context),
            body: CustomBottomNavigation.screens[state.currentIndex],
            bottomNavigationBar: CustomBottomNavigation(
              currentIndex: state.currentIndex,
              onTap: (index) {
                context.read<HomeLayoutCubit>().setCurrentIndex(index);
              },
            ),
          ),
        );
      },
    );
  }
}
