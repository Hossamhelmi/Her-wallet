import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/features/new_circle/presentation/widgets/components/app_bar_extension.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final String name;
  final String? profileImagePath;

  const ProfileHeaderWidget({
    super.key,
    required this.name,
    this.profileImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const AppBarExtension(),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.w),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 30.r,
                  backgroundImage: AssetImage(
                    profileImagePath ?? 'assets/images/woman.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Text(
          name,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.editProfile);
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 16.w),
          ),
          child: Text(
            context.localizations.editProfile,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 4.h),
      ],
    );
  }
}
