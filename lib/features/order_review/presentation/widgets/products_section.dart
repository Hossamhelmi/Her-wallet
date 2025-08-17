import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/order_review/presentation/widgets/product_item.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
       
      ),
      child: Column(
        children: [
          _buildProductsHeader(context),
          Divider(color: AppColors.grey200),
          ProductItem(
            imagePath: 'assets/images/bag.jpg',
            title: context.localizations.elegantHandbag,
            details: context.localizations.productDetailsText,
            price: context.localizations.productPrice,
            onDelete: () {},
          ),
          Divider(color: AppColors.grey200),
          ProductItem(
            imagePath: 'assets/images/bag.jpg',
            title: context.localizations.elegantHandbag,
            details: context.localizations.productDetailsText,
            price: context.localizations.productPrice,
            onDelete: () {},
          ),
          Divider(color: AppColors.grey200),
          ProductItem(
            imagePath: 'assets/images/bag.jpg',
            title: context.localizations.elegantHandbag,
            details: context.localizations.productDetailsText,
            price: context.localizations.productPrice,
            onDelete: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildProductsHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${context.localizations.products} (3)',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                AppColors.backgroundprimary,
              ),             
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  side: BorderSide(color: AppColors.redIcon),
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              context.localizations.deleteAll,
              style: TextStyle(
                color: AppColors.redIcon,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

