  import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/features/home_layout/presentation/cubits/home_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(const HomeLayoutState());

  void toggleBalanceVisibility() {
    emit(state.copyWith(balanceVisible: !state.balanceVisible));
  }

  void setCurrentIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }


}