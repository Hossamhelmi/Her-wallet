class HerSouqState {
  final String selectedFilter;

  HerSouqState({this.selectedFilter = ''});

  HerSouqState copyWith({String? selectedFilter}) {
    return HerSouqState(selectedFilter: selectedFilter ?? this.selectedFilter);
  }
}
