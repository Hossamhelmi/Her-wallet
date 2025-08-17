import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/features/subscription/presentation/cubits/subscription_state.dart';

class SubscriptionCubit extends Cubit<SubscriptionState> {
  SubscriptionCubit() : super(SubscriptionState());

  void pauseSubscription(String duration) {
    emit(state.copyWith(
      selectedPauseDuration: duration,
    ));
  }
 

  void changePlan(String plan) {
    emit(state.copyWith(
      selectedPlan: plan,
    ));
  }

}