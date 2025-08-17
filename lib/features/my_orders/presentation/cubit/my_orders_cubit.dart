import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/features/my_orders/presentation/cubit/my_orders_state.dart';

class MyOrdersCubit extends Cubit<MyOrdersState> {
  MyOrdersCubit() : super(MyOrdersState());

  void selectOrderFilter(String filter) {
    emit(state.copyWith(selectedFilter: filter));
  }
}