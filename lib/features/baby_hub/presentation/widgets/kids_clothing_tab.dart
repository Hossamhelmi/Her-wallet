import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_cubit.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_state.dart';
import 'package:her_wallet/features/baby_hub/presentation/widgets/baby_hub_container.dart';
import 'package:her_wallet/features/baby_hub/presentation/widgets/products_header.dart';

class KidsClothingTab extends StatelessWidget {
  const KidsClothingTab({super.key});

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
                    iamgePath: 'assets/images/kidsClothing.jpg',
                    title: context.localizations.kidsClothing,
                    price: '350 EGP',
                    provider: context.localizations.kidsStore,
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
