import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/features/more/presentation/cubit/more_state.dart';

class MoreCubit extends Cubit<MoreState> {
  MoreCubit() : super(MoreState());

  void toggleNotifications() {
    emit(state.copyWith(notificationsEnabled: !state.notificationsEnabled));
  }
}

