class SubscriptionState {
  final String?  selectedPauseDuration;
  final String? selectedPlan;
  SubscriptionState({ this.selectedPauseDuration = '1 Month', this.selectedPlan = 'Gold'});
  SubscriptionState copyWith({String? selectedPauseDuration, String? selectedPlan}) {
    return SubscriptionState(
      selectedPauseDuration: selectedPauseDuration ?? this.selectedPauseDuration,
      selectedPlan: selectedPlan ?? this.selectedPlan,
      
    );
  }
}

