import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
import '../widgets/widgets.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data - in real app this would come from parameters or state management
    final List<ProductData> products = [
      ProductData(
        imagePath: 'assets/images/bag.jpg',
        name: context.localizations.luxuryHandbag,
        details: context.localizations.colorWhite,
        price: context.localizations.price299,
        quantity: context.localizations.quantityOne,
        totalPrice: context.localizations.totalPrice300,
      ),
      ProductData(
        imagePath: 'assets/images/bag.jpg',
        name: context.localizations.luxuryHandbag,
        details: context.localizations.colorWhite,
        price: context.localizations.price299,
        quantity: context.localizations.quantityOne,
        totalPrice: context.localizations.totalPrice300,
      ),
    ];

    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.orderDetails),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Order Header Info
                  OrderHeaderInfo(
                    date: context.localizations.orderDate2,
                    orderNumber: context.localizations.orderNumber2,
                    status: context.localizations.inProgress,
                    statusColor: AppColors.orangeIcon,
                    statusBackgroundColor: AppColors.orangeIcon.withAlpha(20),
                  ),
                  SizedBox(height: 20.h),

                  // Order Status
                  OrderStatusSection(currentStatus: context.localizations.inProgress),
                  SizedBox(height: 10.h),

                  // Products
                  ProductsSection(products: products),
                  SizedBox(height: 8.h),

                  // Shipping Information
                  ShippingInformationSection(
                    name: context.localizations.janeDoe,
                    address: context.localizations.addressExample,
                    city: context.localizations.cairo,
                    phone: context.localizations.phoneExample,
                  ),
                  SizedBox(height: 8.h),

                  // Payment Summary
                  PaymentSummarySection(
                    subtotal: context.localizations.subtotalAmount,
                    shippingFee: context.localizations.shippingFeeAmount,
                    vat: context.localizations.vatAmount,
                    totalAmount: context.localizations.totalAmountExample,
                  ),
                  SizedBox(height: 20.h),

                  // Payment Method
                  PaymentMethodSection(
                    paymentMethod: context.localizations.cashOnDelivery,
                    icon: Icons.payment_outlined,
                  ),
                  SizedBox(height: 24.h),

                  // Done Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.myOrders);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.r),
                        ),
                        elevation: 2,
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                      ),
                      child: Text(
                        context.localizations.done,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

