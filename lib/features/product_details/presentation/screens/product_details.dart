import 'package:flutter/material.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
import 'package:her_wallet/features/order_payment/presentation/widgets/payment_method_section.dart';
import '../widgets/widgets.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String title;
  final String imageUrl;
  final String price;
  final bool fromAddsHub;
  const ProductDetailsScreen({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.fromAddsHub,
  });

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
        isProductDetails: !widget.fromAddsHub,
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
                            widget.imageUrl,
                            /*
                            'assets/images/bag.jpg',
                            'assets/images/bag.jpg',
                            'assets/images/bag.jpg',
                            'assets/images/bag.jpg',
                            */
                          ],
                        ),
                        SizedBox(height: 8.h),

                        // Product Information
                        widget.fromAddsHub
                            ? Text(
                              widget.title,
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textPrimary,
                              ),
                            )
                            : ProductInfoSection(
                              sellerName: context.localizations.store,
                              sellerLogo: 'assets/images/store.png',
                              productName: widget.title,
                              rating: '${context.localizations.rating} ⭐ 4.8',
                              price: widget.price,
                              discountText: '${context.localizations.save} 20%',
                              onShareTap: () {
                                // Handle share action
                              },
                            ),
                        widget.fromAddsHub
                            ? Text(
                              widget.price,
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.appBar,
                              ),
                            )
                            : Container(),
                        widget.fromAddsHub
                            ? Container()
                            : SizedBox(height: 10.h),

                        // Size Selection
                        widget.fromAddsHub
                            ? Container()
                            : ProductSizeSection(
                              sizes: ['S', 'M', 'L'],
                              initialSize: 'S',
                              onSizeSelected: (size) {
                                // Handle size selection
                              },
                            ),
                        widget.fromAddsHub
                            ? Container()
                            : SizedBox(height: 8.h),

                        // Product Description
                        ProductDescriptionSection(
                          description:
                              'This is a detailed description of the product. It highlights the key features and benefits, helping customers make informed decisions.',
                        ),
                        widget.fromAddsHub
                            ? Material(
                              elevation: 1,
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 12.h,
                                  horizontal: 16.w,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.r,
                                      backgroundColor: AppColors.grey200,
                                      child: Icon(
                                        Icons.person,
                                        size: 30.sp,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Noura Ali',
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: AppColors.textPrimary,
                                          ),
                                        ),
                                        SizedBox(height: 2.h),
                                        Text(
                                          '4.8 ⭐ - 28 reviews',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: AppColors.textSecondary,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      '3 days ago',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                            : Container(),
                        widget.fromAddsHub
                            ? SizedBox(height: 15.h)
                            : Container(),
                        widget.fromAddsHub
                            ? Material(
                              elevation: 1,
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 12.h,
                                  horizontal: 16.w,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.info,
                                          size: 20.sp,
                                          color: AppColors.mainColor,
                                        ),
                                        SizedBox(width: 2.w),
                                        Expanded(
                                          child: Text(
                                            '"Pay to connect" system',
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              color: AppColors.textPrimary,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      'You can pay just EGP 20 to access the seller’s contact details. The amount will be deducted from your wallet balance.',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                            : Container(),

                        // Customer Reviews
                        widget.fromAddsHub
                            ? Container()
                            : CustomerReviewsSection(
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
          widget.fromAddsHub
              ? Padding(
                padding: EdgeInsets.all(12.0.w),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            contentPadding: EdgeInsets.all(15.w),
                            insetPadding: EdgeInsets.symmetric(
                              horizontal: 1.w,
                              vertical: 10.h,
                            ),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Row(
                                    children: [
                                      Text(
                                        context.localizations.confirmPayment,
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        icon: Icon(
                                          Icons.close,
                                          color: AppColors.textPrimary,
                                          size: 20.sp,
                                        ),
                                        onPressed:
                                            () => Navigator.of(context).pop(),
                                        padding: EdgeInsets.all(4.w),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.w,
                                    vertical: 6.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.mainColor.withAlpha(50),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.info_outline,
                                            color: AppColors.textPrimary,
                                            size: 16.sp,
                                          ),
                                          3.verticalSpace,
                                        ],
                                      ),
                                      SizedBox(width: 8.w),
                                      Text(
                                        'Service fee:',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: AppColors.textSecondary,
                                        ),
                                      ),
                                      Text(
                                        'EGP 20',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: AppColors.textPrimary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  context.localizations.paymentMethod,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.r),
                                    border: Border.all(
                                      color: AppColors.mainColor,
                                      width: 2.w,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Radio<PaymentMethodType>(
                                        value: PaymentMethodType.wallet,
                                        groupValue: PaymentMethodType.wallet,
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                              (states) => AppColors.mainColor,
                                            ),

                                        activeColor: AppColors.mainColor,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              context.localizations.myWallet,
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.textPrimary,
                                              ),
                                            ),
                                            SizedBox(height: 4.h),
                                            Text(
                                              context
                                                  .localizations
                                                  .walletBalance,
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: AppColors.textSecondary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 8.w),
                                      Icon(
                                        Icons.wallet_outlined,
                                        color: AppColors.iconGreyTertiary,
                                        size: 32.sp,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 40.h),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          BuildSuccesDialog(context);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColors.mainColor,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12.r,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          context.localizations.pay,
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
                                          foregroundColor:
                                              AppColors.textPrimary,
                                          side: BorderSide(
                                            color: AppColors.grey200,
                                            width: 1.w,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12.r,
                                            ),
                                          ),
                                        ),
                                        onPressed:
                                            () => Navigator.of(context).pop(),
                                        child: Text(
                                          context.localizations.cancel,
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
                    child: Text('Pay to Connect'),
                  ),
                ),
              )
              : AddToCartBottomSection(
                price: widget.price,
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
                              backgroundColor: AppColors.greenIcon.withAlpha(
                                50,
                              ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        context
                                            .localizations
                                            .productDetailsText,
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
                                        borderRadius: BorderRadius.circular(
                                          20.r,
                                        ),
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
                                        borderRadius: BorderRadius.circular(
                                          20.r,
                                        ),
                                      ),
                                    ),
                                    onPressed:
                                        () => Navigator.of(context).pop(),
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
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
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

  Future<dynamic> BuildSuccesDialog(BuildContext context) {
    return showDialog(
                                          context: context,
                                          barrierDismissible: false,
                                          builder:
                                              (context) => AlertDialog(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        16.r,
                                                      ),
                                                ),
                                                insetPadding:
                                                    EdgeInsets.symmetric(
                                                      horizontal: 20.w,
                                                      vertical: 50.h,
                                                    ),
                                                backgroundColor:
                                                    AppColors.background,
                                                elevation: 8,
                                                shadowColor: Colors.black
                                                    .withOpacity(0.3),
                                                content: Container(
                                                  width: double.maxFinite,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                        width: 80.w,
                                                        height: 80.h,
                                                        decoration:
                                                            BoxDecoration(
                                                              color: AppColors
                                                                  .success
                                                                  .withOpacity(
                                                                    0.1,
                                                                  ),
                                                              shape:
                                                                  BoxShape
                                                                      .circle,
                                                            ),
                                                        child: Icon(
                                                          Icons.check_circle,
                                                          color:
                                                              AppColors
                                                                  .success,
                                                          size: 48.sp,
                                                        ),
                                                      ),
                                                      SizedBox(height: 20.h),
                                                      Text(
                                                        context
                                                            .localizations
                                                            .successfulPayment,
                                                        style: TextStyle(
                                                          fontSize: 18.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              AppColors
                                                                  .textPrimary,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      Text(
                                                        'You can now contact the seller.',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 14.sp,
                                                          color:
                                                              AppColors
                                                                  .textSecondary,
                                                        ),
                                                      ),
                                                      SizedBox(height: 20.h),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.all(
                                                              12.w,
                                                            ),
                                                        decoration: BoxDecoration(
                                                          color:
                                                              AppColors
                                                                  .grey200,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                16.r,
                                                              ),
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  context
                                                                      .localizations
                                                                      .phone,
                                                                  style: TextStyle(
                                                                    fontSize:
                                                                        14.sp,
                                                                    color:
                                                                        AppColors
                                                                            .textSecondary,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '01023456789',
                                                                  style: TextStyle(
                                                                    fontSize:
                                                                        14.sp,
                                                                    color:
                                                                        AppColors
                                                                            .textPrimary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  context
                                                                      .localizations
                                                                      .email,
                                                                  style: TextStyle(
                                                                    fontSize:
                                                                        14.sp,
                                                                    color:
                                                                        AppColors
                                                                            .textSecondary,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'example@example.com',
                                                                  style: TextStyle(
                                                                    fontSize:
                                                                        14.sp,
                                                                    color:
                                                                        AppColors
                                                                            .textPrimary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 20.h),

                                                      SizedBox(
                                                        width:
                                                            double.infinity,
                                                        child: ElevatedButton(
                                                          onPressed:
                                                              () =>
                                                                  Navigator.of(
                                                                    context,
                                                                  ).pop(),
                                                          style: ElevatedButton.styleFrom(
                                                            elevation: 2,
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    8.r,
                                                                  ),
                                                            ),
                                                          ),

                                                          child: Text(
                                                            context
                                                                .localizations
                                                                .done,
                                                            style: TextStyle(
                                                              fontSize: 16.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
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
