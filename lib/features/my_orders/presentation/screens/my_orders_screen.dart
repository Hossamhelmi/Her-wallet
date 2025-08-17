import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
import 'package:her_wallet/core/shared/widgets/radio_selection_section.dart';
import 'package:her_wallet/features/my_orders/presentation/cubit/my_orders_cubit.dart';
import 'package:her_wallet/features/my_orders/presentation/cubit/my_orders_state.dart';
import 'package:her_wallet/features/my_orders/presentation/widgets/order_raw.dart';

// ignore: must_be_immutable
class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});
  List<String> getFilterList(BuildContext context) => [
    context.localizations.all,
    context.localizations.inProgress,
    context.localizations.delivered,
    context.localizations.cancelled,
  ];
  @override
  Widget build(BuildContext context) {
    final list = getFilterList(context);

    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.myOrders),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            RadioSelectionSection(
              list: list,
              selected:
                  (context.read<MyOrdersCubit>().state.selectedFilter == '')
                      ? context.localizations.all
                      : context.read<MyOrdersCubit>().state.selectedFilter,
              onSelected: (value) {
                context.read<MyOrdersCubit>().selectOrderFilter(value);
              },
            ),
            SizedBox(height: 5.h),
            BlocBuilder<MyOrdersCubit, MyOrdersState>(
              builder: (context, state) {
                if (state.selectedFilter == context.localizations.all ||
                    state.selectedFilter == '') {
                  return Column(
                    children: [
                      OrderRaw(status: context.localizations.inProgress),
                      OrderRaw(status: context.localizations.delivered),
                      OrderRaw(status: context.localizations.delivered),
                      OrderRaw(status: context.localizations.cancelled),
                    ],
                  );
                } else if (state.selectedFilter ==
                    context.localizations.inProgress) {
                  return Column(
                    children: [
                      OrderRaw(status: context.localizations.inProgress),
                      OrderRaw(status: context.localizations.inProgress),
                    ],
                  );
                } else if (state.selectedFilter ==
                    context.localizations.delivered) {
                  return Column(
                    children: [
                      OrderRaw(status: context.localizations.delivered),
                    ],
                  );
                } else if (state.selectedFilter ==
                    context.localizations.cancelled) {
                  return Column(
                    children: [
                      OrderRaw(status: context.localizations.cancelled),
                    ],
                  );
                }
                return Container();
              },
            ),

            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
