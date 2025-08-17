import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/features/home_layout/presentation/cubits/home_cubit.dart';

class QuickAccessSection extends StatelessWidget {
  const QuickAccessSection({super.key});

 

  @override
  Widget build(BuildContext context) {
       List<Map<String, dynamic>> quickAccessItems = [
    {
      'imagePath': 'quickAccess1.png',
      'color': AppColors.mainColor,
      'title': context.localizations.brideZone,
      'routeName': AppRoutes.brideZone,
    },
    {
      'imagePath': 'quickAccess2.png',
      'color': AppColors.yellowIcon,
      'title': context.localizations.babyhub,
      'routeName': AppRoutes.babyHub,
    },
    {
      'imagePath': 'quickAccess3.png',
      'color': AppColors.blueIcon,
      'title': context.localizations.womensBazar,
      'routeName': AppRoutes.bazar,
    },
    {
      'imagePath': 'quickAccess4.png',
      'color': AppColors.orangeIcon,
      'title': context.localizations.herSouq,
      'routeName': AppRoutes.herSouq,
    },
    {
      'imagePath': 'quickAccess5.png',
      'color': AppColors.greenIcon,
      'title': context.localizations.womenEmpowerment,
      'routeName': AppRoutes.womenEmpowerment,
    },
    {
      'imagePath': 'quickAccess6.png',
      'color': AppColors.redIcon,
      'title': context.localizations.subscribtionBox,
      'routeName': AppRoutes.subscription,
    },
    {
      'imagePath': 'quickAccess7.png',
      'color': AppColors.greyIcon,
      'title': context.localizations.blog,
      'routeName': AppRoutes.blog,
    },
    {
      'imagePath': 'quickAccess8.png',
      'color': AppColors.lightGreenIcon,
      'title': context.localizations.circles,
      'routeName': AppRoutes.mycircle,
    },
    {
      'imagePath': 'quickAccess9.png',
      'color': AppColors.pinkIcon,
      'title': context.localizations.forHerServices,
      'routeName': AppRoutes.forHerServices,
    },
    {
      'imagePath': 'quickAccess10.png',
      'color': AppColors.darkBlueIcon,
      'title': context.localizations.paymentServices,
      'routeName': AppRoutes.paymentServices,
    },
  ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
                context.localizations.quickAccess,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Wrap(
            runSpacing: 10.h,
            spacing: 15.w,
            alignment: WrapAlignment.start,
            children:
                quickAccessItems
                    .map(
                      (item) => QuickAccessWidget(
                        imagePath: item['imagePath'],
                        color: (item['color'] as Color).withAlpha(50),
                        iconColor: item['color'],
                        title: item['title'],
                        routeName: item['routeName'] ?? '',
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    );
  }
}

class QuickAccessWidget extends StatelessWidget {
  final String imagePath;
  final Color color;
  final Color iconColor;
  final String title;
  final String? routeName;

  const QuickAccessWidget({
    super.key,
    required this.imagePath,
    required this.color,
    required this.iconColor,
    required this.title,
    this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (routeName != null && routeName!.isNotEmpty) {
          if (routeName == AppRoutes.bazar) {
            context.read<HomeLayoutCubit>().setCurrentIndex(3);
          } else if (routeName == AppRoutes.mycircle) {
            context.read<HomeLayoutCubit>().setCurrentIndex(2);
          }else if (routeName == AppRoutes.subscription) {
            context.read<HomeLayoutCubit>().setCurrentIndex(1);
          }else {
            Navigator.pushNamed(context, routeName!);
          }
        }
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 10.h),
            height: 60.h,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Image.asset(
              'assets/icons/$imagePath',
              fit: BoxFit.contain,
              color: iconColor,
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.apps, color: iconColor, size: 28.w);
              },
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            _formatTitle(title),
            style: TextStyle(
              fontSize: 10.sp,
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  String _formatTitle(String title) {
    if(title == 'For Her Services'){
      title = 'For Her \nServices';
    }
    else if (title.length > 10 && title.contains(' ')) {
      return title.split(' ').join('\n');
    }
    return title;
  }
}

