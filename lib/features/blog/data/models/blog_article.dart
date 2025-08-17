class BlogArticle {
  final String imagePath;
  final String category;
  final String title;
  final String description;
  final String? date;

  const BlogArticle({
    required this.imagePath,
    required this.category,
    required this.title,
    required this.description,
    this.date,
  });
}
