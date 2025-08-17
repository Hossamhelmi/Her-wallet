import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';

class AddToCartBottomSection extends StatelessWidget {
  final String price;
  final VoidCallback? onAddToCart;
  final VoidCallback? onFavorite;
  final bool isFavorite;

  const AddToCartBottomSection({
    super.key,
    required this.price,
    this.onAddToCart,
    this.onFavorite,
    this.isFavorite = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.backgroundprimary,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: onAddToCart,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainColor,
                    foregroundColor: Colors.white,

                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    '${context.localizations.addToCart} - $price',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Container(
                padding: EdgeInsets.all(8.r),
                width: 48.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.greyIcon.withOpacity(0.3),
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.backgroundprimary,
                ),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12.r),
                  child: InkWell(
                    onTap: onFavorite,
                    borderRadius: BorderRadius.circular(12.r),
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color:
                          isFavorite ? AppColors.redIcon : AppColors.greyIcon,
                      size: 24.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
