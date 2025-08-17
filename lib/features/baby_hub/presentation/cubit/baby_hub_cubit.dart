import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_state.dart';

class BabyHubCubit extends Cubit<BabyHubState> {
  BabyHubCubit() : super(BabyHubState());

  void selectTab(int index) {
    emit(state.copyWith(selectedTabIndex: index));
  }
}
