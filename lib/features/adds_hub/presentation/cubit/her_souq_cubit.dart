import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/features/adds_hub/presentation/cubit/her_souq_state.dart';

class HerSouqCubit extends Cubit<HerSouqState> {
  HerSouqCubit() : super(HerSouqState());

  void selectListFilter(String filter) {
    emit(state.copyWith(selectedFilter: filter));
  }
}
