import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/home/presentation/widgets/home_sections/balance_section.dart';
import 'package:her_wallet/features/home_layout/presentation/cubits/home_cubit.dart';

class WalletHeaderSection extends StatelessWidget {
  const WalletHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
        BlocProvider(
          create: (context) => HomeLayoutCubit(),
          child: BalanceSection(backgroundColor: AppColors.background),
        ),
      ],
    );
  }
}
