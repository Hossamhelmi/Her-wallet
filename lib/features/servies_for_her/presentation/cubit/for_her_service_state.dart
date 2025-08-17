class ForHerServiceState {
  final String selectedFilter;

  ForHerServiceState({this.selectedFilter = ''});

  ForHerServiceState copyWith({String? selectedFilter}) {
    return ForHerServiceState(
      selectedFilter: selectedFilter ?? this.selectedFilter,
    );
  }
}
