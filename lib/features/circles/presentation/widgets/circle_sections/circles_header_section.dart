import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/features/recent_transactions/presentation/widgets/search_filter_section.dart';

class CirclesHeaderSection extends StatefulWidget {
  const CirclesHeaderSection({super.key});

  @override
  State<CirclesHeaderSection> createState() => _CirclesHeaderSectionState();
}

class _CirclesHeaderSectionState extends State<CirclesHeaderSection> {
  /*
   String? selected;

  void onSelected(value) {
    setState(() {
      selected = value;
    });
  }
*/
  @override
  Widget build(BuildContext context) {
   // selected = context.localizations.all;
    /*
    List<String> circleTypes = [
      context.localizations.all,
      context.localizations.moms,
      context.localizations.beauty,
      context.localizations.family,
      context.localizations.friends,
    ];
    */
    return Column(
      children: [
        SearchFilterSection(
          isTransaction: false,
          hintText: context.localizations.searchInYourCircles,
          /*
          selectedType: selected,
          onFilterChanged: (value) {
            setState(() {
              selected = value;
            });
          },
          */
        ),
        SizedBox(height: 8.0.h),
        /*
        RadioSelectionSection(
          list: circleTypes,
          selected: selected,
          onSelected: onSelected,
        ),
        */
      ],
    );
  }
}
