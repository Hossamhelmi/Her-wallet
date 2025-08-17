class BlogState {
  final String? selectedFilter;
  final String searchQuery;
  final bool isLoading;

  const BlogState({
    this.selectedFilter,
    this.searchQuery = '',
    this.isLoading = false,
  });

  BlogState copyWith({
    String? selectedFilter,
    String? searchQuery,
    bool? isLoading,
  }) {
    return BlogState(
      selectedFilter: selectedFilter ?? this.selectedFilter,
      searchQuery: searchQuery ?? this.searchQuery,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
