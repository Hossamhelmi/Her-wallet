import 'package:flutter/material.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/shadowed_container.dart';

class ProductDescriptionSection extends StatelessWidget {
  final String title;
  final String description;

  const ProductDescriptionSection({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            description,
            style: TextStyle(fontSize: 12, color: AppColors.textTertiary),
          ),
        ],
      ),
    );
  }
}
