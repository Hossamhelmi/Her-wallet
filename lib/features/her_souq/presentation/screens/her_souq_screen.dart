import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/core/shared/widgets/radio_selection_section.dart';
import 'package:her_wallet/core/shared/widgets/search_field.dart';
import 'package:her_wallet/features/her_souq/presentation/cubit/her_souq_cubit.dart';
import 'package:her_wallet/features/her_souq/presentation/cubit/her_souq_state.dart';
import 'package:her_wallet/features/her_souq/presentation/widgets/product.dart';

class HerSouqScreen extends StatelessWidget {
  const HerSouqScreen({super.key});

  List<String> getFilterList(BuildContext context) {
    return [
      context.localizations.all,
      context.localizations.clothing,
      context.localizations.accessories,
      context.localizations.shoes,
    ];
  }

  @override
  Widget build(BuildContext context) {
    final productCategories = getFilterList(context);

    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.0.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            child: SearchField(
              hintText: context.localizations.searchForProduct,
              onChanged: (value) {
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
          context.localizations.herSouq,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.addProduct);
            },
            child: CircleAvatar(
              backgroundColor: AppColors.backgroundprimary,
              child: Icon(Icons.add, color: AppColors.textPrimary),
            ),
          ),
          SizedBox(width: 10.w),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            RadioSelectionSection(
              list: productCategories,
              selected:
                  context.read<HerSouqCubit>().state.selectedFilter == ''
                      ? context.localizations.all
                      : context.read<HerSouqCubit>().state.selectedFilter,
              onSelected: (value) {
                context.read<HerSouqCubit>().selectListFilter(value);
              },
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Text(
                    context.localizations.productsCount,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Row(
                    children: [
                      Text(
                        context.localizations.sortByLatest,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.textSecondary,
                        size: 22.w,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            BlocBuilder<HerSouqCubit, HerSouqState>(
              builder: (context, state) {
                if (state.selectedFilter == context.localizations.all ||
                    state.selectedFilter == '') {
                  return Wrap(
                    spacing: 8.0.w,
                    runSpacing: 1.0.h,
                    children: [
                      Product(
                        imageUrl: 'assets/images/bag.jpg',
                        title: context.localizations.stylishHandbag,
                        price: context.localizations.priceEgp450,
                        date: context.localizations.fiveDaysAgo,
                        category: context.localizations.clothing,
                      ),
                      Product(
                        imageUrl: 'assets/images/shoes.avif',
                        title: 'shoes',
                        price: context.localizations.priceEgp450,
                        date: context.localizations.fiveDaysAgo,
                        category: context.localizations.shoes,
                      ),
                      Product(
                        imageUrl: 'assets/images/watch.jpg',
                        title: 'watch',
                        price: context.localizations.price299,
                        date: context.localizations.fiveDaysAgo,
                        category: context.localizations.accessories,
                      ),
                      Product(
                        imageUrl: 'assets/images/dress.avif',
                        title: 'dress',
                        price: context.localizations.priceEgp450,
                        date: context.localizations.fiveDaysAgo,
                        category: context.localizations.skirts,
                      ),
                    ],
                  );
                } else if (state.selectedFilter ==
                    context.localizations.clothing) {
                  return Wrap(
                    spacing: 8.0.w,
                    runSpacing: 1.0.h,
                    children: [
                      Product(
                        imageUrl: 'assets/images/dress.avif',
                        title: 'dress',
                        price: context.localizations.priceEgp450,
                        date: context.localizations.fiveDaysAgo,
                        category: context.localizations.clothing,
                      ),
                    ],
                  );
                } else if (state.selectedFilter ==
                    context.localizations.accessories) {
                  return Wrap(
                    spacing: 8.0.w,
                    runSpacing: 1.0.h,
                    children: [
                      Product(
                        imageUrl: 'assets/images/watch.jpg',
                        title: 'watch',
                        price: context.localizations.price299,
                        date: context.localizations.fiveDaysAgo,
                        category: context.localizations.accessories,
                      ),
                    ],
                  );
                } else if (state.selectedFilter ==
                    context.localizations.shoes) {
                  return Wrap(
                    spacing: 8.0.w,
                    runSpacing: 1.0.h,
                    children: [
                      Product(
                        imageUrl: 'assets/images/shoes.avif',
                        title: 'shoes',
                        price: context.localizations.priceEgp450,
                        date: context.localizations.fiveDaysAgo,
                        category: context.localizations.shoes,
                      ),
                    ],
                  );
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
