import 'package:flutter/material.dart';
import 'package:her_wallet/core/shared/widgets/radio_selection_section.dart';

class CategoryFilterSection extends StatelessWidget {
  final List<String> categories;
  final String? selectedCategory;
  final ValueChanged<dynamic> onCategorySelected;

  const CategoryFilterSection({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return RadioSelectionSection(
      list: categories,
      selected: selectedCategory,
      onSelected: onCategorySelected,
    );
  }
}
