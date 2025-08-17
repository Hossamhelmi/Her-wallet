import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/radio_selection_section.dart';
import 'package:her_wallet/core/shared/widgets/search_field.dart';
import 'package:her_wallet/features/servies_for_her/presentation/widgets/service_container.dart';
import 'package:her_wallet/features/servies_for_her/presentation/widgets/service_list.dart';
import 'package:her_wallet/features/servies_for_her/presentation/cubit/for_her_service_cubit.dart';
import 'package:her_wallet/features/servies_for_her/presentation/cubit/for_her_service_state.dart';

class ForHerServicesScreen extends StatelessWidget {
  const ForHerServicesScreen({super.key});

  List<String> getServiceCategories(BuildContext context) {
    return [
      context.localizations.all,
      context.localizations.transportation,
      context.localizations.foodDelivery,
      context.localizations.beauty,
    ];
  }

  @override
  Widget build(BuildContext context) {
    final productCategories = getServiceCategories(context);

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
          context.localizations.forHerServices,
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
            SizedBox(height: 16.h),
            RadioSelectionSection(
              list: productCategories,
              selected:
                  context.read<ForHerServiceCubit>().state.selectedFilter == ''
                      ? context.localizations.all
                      : context.read<ForHerServiceCubit>().state.selectedFilter,
              onSelected: (value) {
                context.read<ForHerServiceCubit>().selectFilter(value);
              },
            ),
            SizedBox(height: 8.h),

            // Render services based on selection
            BlocBuilder<ForHerServiceCubit, ForHerServiceState>(
              builder: (context, state) {
                if (state.selectedFilter == context.localizations.all ||
                    state.selectedFilter == '') {
                  return Column(
                    children: [
                      _buildTransportationSection(context),
                      _buildFoodDeliverySection(context),
                      _buildBeautySection(context),
                    ],
                  );
                } else if (state.selectedFilter ==
                    context.localizations.transportation) {
                  return _buildTransportationSection(context);
                } else if (state.selectedFilter ==
                    context.localizations.foodDelivery) {
                  return _buildFoodDeliverySection(context);
                } else if (state.selectedFilter ==
                    context.localizations.beauty) {
                  return _buildBeautySection(context);
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }

  // Transportation section builder
  Widget _buildTransportationSection(BuildContext context) {
    return ServiceList(
      title: context.localizations.transportationServices,
      services: [
        ServiceContainer(
          title: context.localizations.rideHailing,
          description: context.localizations.rideHailingTransportOptions,
          imagePath: 'assets/images/ride-hailing.jpg',
          buttonText: context.localizations.bookYourRide,
        ),
        ServiceContainer(
          title: 'Uber',
          description: context.localizations.rideHailingTransportOptions,
          imagePath: 'assets/images/ride-hailing.jpg',
          buttonText: context.localizations.bookYourRide,
        ),
      ],
    );
  }

  // Food delivery section builder
  Widget _buildFoodDeliverySection(BuildContext context) {
    return ServiceList(
      title: context.localizations.foodDelivery,
      services: [
        ServiceContainer(
          title: context.localizations.foodDelivery,
          description: context.localizations.fastFoodDelivery,
          imagePath: 'assets/images/food-delivery.jpg',
          buttonText: context.localizations.orderNow,
        ),
        ServiceContainer(
          title: 'Food Express',
          description: context.localizations.fastFoodDelivery,
          imagePath: 'assets/images/food-delivery.jpg',
          buttonText: context.localizations.orderNow,
        ),
      ],
    );
  }

  // Beauty section builder
  Widget _buildBeautySection(BuildContext context) {
    return ServiceList(
      title: context.localizations.beauty,
      services: [
        ServiceContainer(
          title: context.localizations.beauty,
          description: context.localizations.beautyServices,
          imagePath: 'assets/images/beauty-salons.jpg',
          buttonText: context.localizations.bookNow,
        ),
        ServiceContainer(
          title: 'Premium Salon',
          description: context.localizations.beautyServices,
          imagePath: 'assets/images/beauty-salons.jpg',
          buttonText: context.localizations.bookNow,
        ),
      ],
    );
  }
}
