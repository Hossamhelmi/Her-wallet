import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/features/new_circle/presentation/widgets/components/app_bar_extension.dart';

class JustNameAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isProductDetails;
  const JustNameAppBar({
    super.key,
    required this.title,
    this.isProductDetails = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(20.0.h),
        child: AppBarExtension(),
      ),
 flexibleSpace: Container(

    decoration: BoxDecoration(
      color: AppColors.appBar,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20.r),
        bottomRight: Radius.circular(20.r),
      ),
    ),
  ),
      backgroundColor: Colors.transparent,
      centerTitle: false,
      leading: Padding(
        padding: EdgeInsets.only(bottom: 5.h, left: 12.w),
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 20.w),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      actions:
          isProductDetails
              ? [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.orderReview);
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.w),
                        child: CircleAvatar(
                          radius: 20.r,
                          backgroundColor: AppColors.backgroundprimary,
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: AppColors.textPrimary,
                            size: 20.w,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 8.w,
                        top: 0,
                        bottom: 25.h,
                        child: CircleAvatar(
                          radius: 8.r,
                          backgroundColor: AppColors.redIcon,
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]
              : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
