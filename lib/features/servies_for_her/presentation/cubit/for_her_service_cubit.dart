import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/features/servies_for_her/presentation/cubit/for_her_service_state.dart';

class ForHerServiceCubit extends Cubit<ForHerServiceState> {
  ForHerServiceCubit() : super(ForHerServiceState());

  void selectFilter(String filter) {
    emit(state.copyWith(selectedFilter: filter));
  }
}
