class MyOrdersState {
  final String selectedFilter;

  MyOrdersState({ this.selectedFilter=''});

  MyOrdersState copyWith({String? selectedFilter}) {
    return MyOrdersState(
      selectedFilter: selectedFilter ?? this.selectedFilter,
    );
  }
}
