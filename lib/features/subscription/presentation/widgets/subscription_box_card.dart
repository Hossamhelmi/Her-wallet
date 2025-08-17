import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/features/subscription/presentation/cubits/subscription_cubit.dart';
import 'package:her_wallet/features/subscription/presentation/widgets/box_header_section.dart';
import 'package:her_wallet/features/subscription/presentation/widgets/cover_image_section.dart';
import 'package:her_wallet/features/subscription/presentation/widgets/renewal_date_section.dart';
import 'package:her_wallet/features/subscription/presentation/widgets/action_buttons_section.dart';

class SubscriptionBoxCard extends StatelessWidget {
  const SubscriptionBoxCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Material(
        borderRadius: BorderRadius.circular(24.r),
        color: Colors.white,
        elevation: 4,
        shadowColor: Colors.black.withOpacity(0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CoverImageSection(),
            const BoxHeaderSection(),
            const RenewalDateSection(),
             ActionButtonsSection( 
              subscriptionCubit: context.read<SubscriptionCubit>(),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}


