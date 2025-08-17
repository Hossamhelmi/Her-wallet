class BabyHubState {
  final int selectedTabIndex;

  BabyHubState({this.selectedTabIndex = 0});

  BabyHubState copyWith({int? selectedTabIndex}) {
    return BabyHubState(
      selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
    );
  }
}
