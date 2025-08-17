import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/search_field.dart';

class BlogAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function(String)? onSearchChanged;

  const BlogAppBar({super.key, this.onSearchChanged});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(80.0.h),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: SearchField(
            hintText: context.localizations.searchForBlogPost,
            onChanged:
                onSearchChanged ??
                (value) {
                  // Implement search functionality
                },
          ),
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
      leading: Padding(
        padding: EdgeInsets.only(bottom: 5.h),
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      title: Text(
        context.localizations.blog,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 80.h);
}

