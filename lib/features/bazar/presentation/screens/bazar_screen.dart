import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/features/web_view/web_view.dart';

class BazarScreen extends StatelessWidget {
  const BazarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 5.h),
             child: Text(
                context.localizations.stores,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
           ),
    
          SizedBox(
            height: 120.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              children: [
                StoreAvatar(
                  imageUrl: 'assets/images/amazon.png',
                  storeName: 'Amazon',
                ),
                StoreAvatar(
                  imageUrl: 'assets/images/noon.png',
                  storeName: 'Noon',
                ),
                StoreAvatar(
                  imageUrl: 'assets/images/carfour.png',
                  storeName: 'Carrefour',
                ),
                StoreAvatar(
                  imageUrl: 'assets/images/shein.png',
                  storeName: 'Shein',
                ),
                StoreAvatar(
                  imageUrl: 'assets/images/jumia.png',
                  storeName: 'Jumia',
                ),
              ] ,
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => 
            WebViewScreen(url: 'https://www.amazon.com/gp/goldbox?ref_=nav_cs_gb'))), // Navigate to WebViewScreen
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Stack(
                children: [
                  Container(
                    height: 170.h,
                    decoration: BoxDecoration(
                      color: AppColors.backgroundprimary,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
            
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.r),
                      child: Image.asset(
                        'assets/images/summer.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    height: 80.h,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.8),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30.h,
                    left: 20.w,
                    child: Text(
                      context.localizations.summerCollection,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10.h,
                    left: 20.w,
                    child: Text(
                      context.localizations.saveUpTo40Off,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
            child: Text(
                context.localizations.bestSellers,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                ProductContainer(
                  title: 'Authentic Parisian Perfume',
                  imageUrl: 'assets/images/item1.png',
                  price: '450 EGP',

                ),
                ProductContainer(
                  title: 'Elegant Evening Gown',
                  imageUrl: 'assets/images/item3.png',
                  price: '850 EGP',
                ),
                ProductContainer(
                  title: 'Stylish Leather Handbag',
                  imageUrl: 'assets/images/item2.png',
                  price: '1200 EGP',
                ),
                ProductContainer(
                  title: 'Authentic Parisian Perfume',
                  imageUrl: 'assets/images/item4.png',
                  price: '2200 EGP',
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class ProductContainer extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String price;
  const ProductContainer({
    required this.title,
    required this.imageUrl,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        AppRoutes.productDetails,
        arguments: {
          'title': title,
          'imageUrl': imageUrl,
          'price': price,
        },
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.42,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width * 0.42,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.all(3.w),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/store.png',
                    width: 40.w,
                    height: 15.h,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    context.localizations.store,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
      
            Padding(
              padding: EdgeInsets.all(3.w),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  height: 1.0,
                ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Text(
                    context.localizations.viewDetails,
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoreAvatar extends StatelessWidget {
  final String imageUrl;
  final String storeName;
  const StoreAvatar({
    super.key,
    required this.imageUrl,
    required this.storeName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40.r,
            backgroundColor: Colors.white,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.r),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
        
          SizedBox(height: 10.h),
          Text(
            storeName,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

