import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_cubit.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_state.dart';
import 'package:her_wallet/features/baby_hub/presentation/widgets/baby_hub_container.dart';
import 'package:her_wallet/features/baby_hub/presentation/widgets/products_header.dart';

class BabyCareTab extends StatelessWidget {
  const BabyCareTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(5.h),
      child: Column(
        children: [
          ProductsHeader(),
          BlocBuilder<BabyHubCubit, BabyHubState>(
            builder: (context, state) {
              return Wrap(
                spacing: 8.0.w,
                runSpacing: 8.0.h,
                children: List.generate(
                  2,
                  (index) => BabyHubContainer(
                    iamgePath: 'assets/images/babyCare.jpg',
                    title: context.localizations.babyEssentials,
                    price: '450 EGP',
                    provider: context.localizations.misrPharmacy,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
