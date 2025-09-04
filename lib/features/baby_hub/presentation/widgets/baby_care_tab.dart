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
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductsHeader(),
          BlocBuilder<BabyHubCubit, BabyHubState>(
            builder: (context, state) {
              return Wrap(
                
                spacing: 12.0.w,
                runSpacing: 8.0.h,
                children: [
                   BabyHubContainer(
                    iamgePath: 'assets/images/babyCare1.png',
                    title: 'Baby Moisturizing Cream',
                    price: '450 EGP',
                    provider: context.localizations.misrPharmacy,
                  ),
                  BabyHubContainer(
                    iamgePath: 'assets/images/babyCare2.png',
                    title: 'Gentle Baby Shampoo',
                    price: '300 EGP',
                    provider: context.localizations.misrPharmacy,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
