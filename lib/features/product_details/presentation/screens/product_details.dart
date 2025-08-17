import 'package:flutter/material.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
import '../widgets/widgets.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(
        title: context.localizations.productDetails,
        isProductDetails: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Product Image Gallery
                        ProductImageGallerySection(
                          imagePaths: [
                            'assets/images/bag.jpg',
                            'assets/images/bag.jpg',
                            'assets/images/bag.jpg',
                            'assets/images/bag.jpg',
                            'assets/images/bag.jpg',
                          ],
                        ),
                        SizedBox(height: 8.h),

                        // Product Information
                        ProductInfoSection(
                          sellerName: context.localizations.store,
                          sellerLogo: 'assets/images/store.png',
                          productName: context.localizations.luxuryHandbag,
                          rating: '${context.localizations.rating} ⭐ 4.8',
                          price: ' 850 EGP',
                          discountText: '${context.localizations.save} 20%',
                          onShareTap: () {
                            // Handle share action
                          },
                        ),
                        SizedBox(height: 4.h),

                        // Size Selection
                        ProductSizeSection(
                          sizes: ['S', 'M', 'L'],
                          initialSize: 'S',
                          onSizeSelected: (size) {
                            // Handle size selection
                          },
                        ),
                        SizedBox(height: 8.h),

                        // Product Description
                        ProductDescriptionSection(
                          description:
                              'This is a detailed description of the product. It highlights the key features and benefits, helping customers make informed decisions.',
                        ),

                        // Customer Reviews
                        CustomerReviewsSection(
                          overallRating: 4.5,
                          totalReviews: 28,
                          reviews: [
                            ReviewData(
                              userName: 'Sarah Johnson',
                              userImage: 'assets/images/user1.jpg',
                              rating: '5',
                              reviewText:
                                  'This is a sample comment text for the product review. It provides feedback on the product quality and experience.',
                              date: 'Jan 1, 2023',

                              likes: 50,
                              onLikeTap: () {
                                // Handle like action
                              },
                            ),
                          ],
                          onViewAllReviews: () {
                            // Handle view all reviews
                          },
                        ),
                        SizedBox(height: 4.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Add to Cart Bottom Section
          AddToCartBottomSection(
            price: '850 EGP',
            isFavorite: isFavorite,
            onAddToCart: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    insetPadding: EdgeInsets.all(16.w),
                    backgroundColor: Colors.white,
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: AppColors.greenIcon.withAlpha(50),
                          child: Icon(
                            Icons.check,
                            size: 40,
                            color: AppColors.greenIcon,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          context.localizations.addedToCart,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 8.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.grey200,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/bag.jpg',
                                width: 90.w,
                                height: 80.h,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 5.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    context.localizations.luxuryHandbag,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    context.localizations.productDetailsText,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.orderReview,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.mainColor,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                ),
                                child: Text(
                                  context.localizations.goToCart,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12.w),
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: AppColors.textPrimary,
                                  side: BorderSide(
                                    color: AppColors.grey200,
                                    width: 1.w,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                ),
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text(
                                  context.localizations.continueShopping,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            onFavorite: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: AppColors.greenIcon,
                  content: Text(
                    context.localizations.addedToFavorites,
                    style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
