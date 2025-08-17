import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/features/women_empowerment/presentation/cubit/women_empowerment_state.dart';

class WomenEmpowermentCubit extends Cubit<WomenEmpowermentState> {
  WomenEmpowermentCubit() : super(WomenEmpowermentState());

  void selectCategory(String category) {
    emit(state.copyWith(selectedCategory: category));
  }
}
