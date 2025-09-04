import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/search_field.dart';
import 'package:her_wallet/features/women_empowerment/presentation/widgets/event_list_section.dart';
import 'package:her_wallet/features/women_empowerment/presentation/cubit/women_empowerment_cubit.dart';
import 'package:her_wallet/features/women_empowerment/presentation/cubit/women_empowerment_state.dart';
import '../widgets/category_filter_section.dart';
import '../widgets/coaches_list_section.dart';
import '../widgets/booking_session_dialog.dart';

class WomenEmpowermentScreen extends StatelessWidget {
  const WomenEmpowermentScreen({super.key});

  List<String> getEmpowermentCategories(BuildContext context) {
    return [
      context.localizations.mentorship,
      context.localizations.event,
      context.localizations.workshops,
      context.localizations.resources,
      context.localizations.finding,
    ];
  }

  void _onBookSession(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => const BookingSessionDialog(
            coachName: 'Coach 1',
            coachSpecialization: 'Career Coach Consultant',
            coachRating: '4.8',
            coachImagePath: 'assets/images/woman.jpg',
          ),
    );
  }

  List<CoachData> _getCoachesData(BuildContext context) {
    return List.generate(
      1,
      (index) => CoachData(
        name: 'Coach ${index + 1}',
        specialization:
            'Specialist in women empowerment and\nleadership development',
        rating: '4.8',
        price: 'EGP 300/Session',
        imagePath: 'assets/images/woman.jpg',
        onBookSession: () => _onBookSession(context),
      ),
    );
  }

  List<EventData> _getEventData() {
    return List.generate(
      1,
      (index) => EventData(
        title: 'Modern Woman Leadership Skills',
        discription: '3 hours | June 15, 2024',
        price: 'EGP 300',
        imagePath: 'assets/images/event.jpg',
      ),
    );
  }

  Widget _buildCategoryContent(BuildContext context, String selectedCategory) {
    if (selectedCategory == context.localizations.mentorship ||
        selectedCategory == '') {
      return CoachesListSection(
        title: context.localizations.topRatedCoaches,
        coaches: _getCoachesData(context),
      );
    } else if (selectedCategory == context.localizations.event) {
      return EventListSection(
        title: context.localizations.event,
        events: _getEventData(),
      );
    } else if (selectedCategory == context.localizations.workshops) {
      return EventListSection(
        title: context.localizations.workshops,
        events: _getWorkshopData(),
      );
    } else if (selectedCategory == context.localizations.resources) {
      return _buildResourcesContent(context);
    } else if (selectedCategory == context.localizations.finding) {
      return _buildNetworkingContent(context);
    } else {
      // Default to mentorship
      return CoachesListSection(
        title: context.localizations.topRatedCoaches,
        coaches: _getCoachesData(context),
      );
    }
  }

  Widget _buildResourcesContent(BuildContext context) {
    return EventListSection(
      title: context.localizations.resources,
      events: _getResourcesData(),
    );
  }

  Widget _buildNetworkingContent(BuildContext context) {
    return EventListSection(
      title: context.localizations.finding,
      events: _getNetworkingData(),
    );
  }

  List<EventData> _getWorkshopData() {
    return List.generate(
      1,
      (index) => EventData(
        title: 'Leadership Workshop ${index + 1}',
        discription: '2 hours | July ${20 + index}, 2024',
        price: 'EGP 250',
        imagePath: 'assets/images/event.jpg',
      ),
    );
  }

  List<EventData> _getResourcesData() {
    return List.generate(
      1,
      (index) => EventData(
        title: 'Resource Guide ${index + 1}',
        discription: 'Self-paced | Available 24/7',
        price: 'Free',
        imagePath: 'assets/images/event.jpg',
      ),
    );
  }

  List<EventData> _getNetworkingData() {
    return List.generate(
      1,
      (index) => EventData(
        title: 'Networking Event ${index + 1}',
        discription: '3 hours | August ${10 + index}, 2024',
        price: 'EGP 150',
        imagePath: 'assets/images/event.jpg',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final empowermentCategories = getEmpowermentCategories(context);

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
          context.localizations.womenEmpowerment,
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
            CategoryFilterSection(
              categories: empowermentCategories,
              selectedCategory:
                  context
                              .read<WomenEmpowermentCubit>()
                              .state
                              .selectedCategory ==
                          ''
                      ? context.localizations.mentorship
                      : context
                          .read<WomenEmpowermentCubit>()
                          .state
                          .selectedCategory,
              onCategorySelected: (value) {
                context.read<WomenEmpowermentCubit>().selectCategory(value);
              },
            ),
            SizedBox(height: 15.h),
            BlocBuilder<WomenEmpowermentCubit, WomenEmpowermentState>(
              builder: (context, state) {
                return _buildCategoryContent(context, state.selectedCategory);
              },
            ),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }
}
