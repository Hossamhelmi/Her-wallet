import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/features/bride_zone/presentation/cubit/bride_zone_state.dart';

class BrideZoneCubit extends Cubit<BrideZoneState> {
  BrideZoneCubit() : super(BrideZoneState());

  void selectListFilter(String filter) {
    emit(state.copyWith(selectedFilter: filter));
  }
}