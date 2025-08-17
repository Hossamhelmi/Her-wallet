class BrideZoneState {
  final String selectedFilter;

  BrideZoneState({ this.selectedFilter=''});

  BrideZoneState copyWith({String? selectedFilter}) {
    return BrideZoneState(
      selectedFilter: selectedFilter ?? this.selectedFilter,
    );
  }
}
