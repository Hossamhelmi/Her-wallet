import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/radio_selection_section.dart';
import 'package:her_wallet/core/shared/widgets/search_field.dart';
import 'package:her_wallet/features/bride_zone/presentation/cubit/bride_zone_cubit.dart';
import 'package:her_wallet/features/bride_zone/presentation/cubit/bride_zone_state.dart';
import 'package:her_wallet/features/bride_zone/presentation/widgets/bride_zone_list_section.dart';
import 'package:her_wallet/features/bride_zone/presentation/widgets/dress_srevice_card.dart';
import 'package:her_wallet/features/bride_zone/presentation/widgets/service_card.dart';

class BrideZoneScreen extends StatelessWidget {
  const BrideZoneScreen({super.key});

  List<String> getFilterList(BuildContext context) {
    return [
      context.localizations.photographers,
      context.localizations.makeupArtists,
      context.localizations.weddingPlanners,
      context.localizations.venues,
      context.localizations.dresses,
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
              hintText: context.localizations.searchForService,
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
          context.localizations.brideZone,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h),
            RadioSelectionSection(
              list: productCategories,
              selected:
                  context.read<BrideZoneCubit>().state.selectedFilter == ''
                      ? context.localizations.photographers
                      : context.read<BrideZoneCubit>().state.selectedFilter,
              onSelected: (value) {
                context.read<BrideZoneCubit>().selectListFilter(value);
              },
            ),
            SizedBox(height: 10.h),
            BlocBuilder<BrideZoneCubit, BrideZoneState>(
              builder: (context, state) {
                if (state.selectedFilter ==
                        context.localizations.photographers ||
                    state.selectedFilter == '') {
                  return BrideZoneListSection(
                    serviceCards: [
                      ServiceCard(
                        name: 'Sarah Smith',
                        specialization: 'Enthusiastic Photographer',
                        rating: '⭐⭐⭐⭐⭐ 4.8',
                      ),
                      /*
                      ServiceCard(
                        name: 'Emily Johnson',
                        specialization: 'Enthusiastic Photographer',
                        rating: '⭐⭐⭐⭐⭐ 4.9',
                      ),
                      ServiceCard(
                        name: 'Olivia Brown',
                        specialization: 'Enthusiastic Photographer',
                        rating: '⭐⭐⭐⭐⭐ 4.7',
                      ),
                      ServiceCard(
                        name: 'Sophia Davis',
                        specialization: 'Enthusiastic Photographer',
                        rating: '⭐⭐⭐⭐⭐ 4.6',
                      ),
                      */
                    ],
                    title: context.localizations.topRatedPhotographers,
                  );
                } else if (state.selectedFilter ==
                    context.localizations.makeupArtists) {
                  return BrideZoneListSection(
                    serviceCards: [
                      ServiceCard(
                        name: 'Emma Wilson',
                        specialization: 'Expert Makeup Artist',
                        rating: '⭐⭐⭐⭐⭐ 4.9',
                      ),
                      /*
                      ServiceCard(
                        name: 'Ava Taylor',
                        specialization: 'Expert Makeup Artist',
                        rating: '⭐⭐⭐⭐⭐ 4.8',
                      ),
                      ServiceCard(
                        name: 'Mia Anderson',
                        specialization: 'Expert Makeup Artist',
                        rating: '⭐⭐⭐⭐⭐ 4.7',
                      ),
                      */
                    ],
                    title: context.localizations.topRatedMakeupArtists,
                  );
                } else if (state.selectedFilter ==
                    context.localizations.weddingPlanners) {
                  return BrideZoneListSection(
                    serviceCards: [
                      ServiceCard(
                        name: 'Emma Wilson',
                        specialization: 'Expert Wedding Planner',
                        rating: '⭐⭐⭐⭐⭐ 4.9',
                      ),
                      /*
                      ServiceCard(
                        name: 'Ava Taylor',
                        specialization: 'Expert Wedding Planner',
                        rating: '⭐⭐⭐⭐⭐ 4.8',
                      ),
                      ServiceCard(
                        name: 'Mia Anderson',
                        specialization: 'Expert Wedding Planner',
                        rating: '⭐⭐⭐⭐⭐ 4.7',
                      ),
                      */
                    ],
                    title: context.localizations.topRatedWeddingPlanners,
                  );
                } else if (state.selectedFilter ==
                    context.localizations.venues) {
                  return BrideZoneListSection(
                    serviceCards: [
                      ServiceCard(
                        name: 'Palace Hotel',
                        specialization: 'Luxury Wedding Venue',
                        rating: '⭐⭐⭐⭐⭐ 4.9',
                      ),
                      /*
                      ServiceCard(
                        name: 'Garden Paradise',
                        specialization: 'Outdoor Wedding Venue',
                        rating: '⭐⭐⭐⭐⭐ 4.8',
                      ),
                      ServiceCard(
                        name: 'Royal Ballroom',
                        specialization: 'Classic Wedding Venue',
                        rating: '⭐⭐⭐⭐⭐ 4.7',
                      ),
                      */
                    ],
                    title: context.localizations.topRatedVenues,
                  );
                } else if (state.selectedFilter ==
                    context.localizations.dresses) {
                  return BrideZoneListSection(
                    serviceCards: [
                     DressServiceCard(
                      dressImage: 'assets/images/dress1.png',
                      dressPrice: '850 EGP',
                     ),
                     DressServiceCard(
                      dressImage: 'assets/images/dress2.png',
                      dressPrice: '950 EGP',
                     ),
                    ],
                    title: context.localizations.topRatedVendors,
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
