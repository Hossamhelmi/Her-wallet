class WomenEmpowermentState {
  final String selectedCategory;

  WomenEmpowermentState({this.selectedCategory = ''});

  WomenEmpowermentState copyWith({String? selectedCategory}) {
    return WomenEmpowermentState(
      selectedCategory: selectedCategory ?? this.selectedCategory,
    );
  }
}
