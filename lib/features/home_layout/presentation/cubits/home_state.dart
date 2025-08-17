class HomeLayoutState {
  final bool balanceVisible;
  final int currentIndex;
  const HomeLayoutState({this.balanceVisible = false, this.currentIndex = 0});


  HomeLayoutState copyWith({bool? balanceVisible, int? currentIndex}) {
    return HomeLayoutState(
      balanceVisible: balanceVisible ?? this.balanceVisible,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
  
}
