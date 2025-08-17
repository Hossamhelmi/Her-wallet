import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../components/product_card.dart';

class ProductsSection extends StatelessWidget {
  final List<ProductData> products;

  const ProductsSection({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localizations.products,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 10.h),
        ...products
            .map(
              (product) => ProductCard(
                imagePath: product.imagePath,
                productName: product.name,
                productDetails: product.details,
                price: product.price,
                quantity: product.quantity,
                totalPrice: product.totalPrice,
              ),
            )
            .toList(),
      ],
    );
  }
}

class ProductData {
  final String imagePath;
  final String name;
  final String details;
  final String price;
  final String quantity;
  final String totalPrice;

  const ProductData({
    required this.imagePath,
    required this.name,
    required this.details,
    required this.price,
    required this.quantity,
    required this.totalPrice,
  });
}

