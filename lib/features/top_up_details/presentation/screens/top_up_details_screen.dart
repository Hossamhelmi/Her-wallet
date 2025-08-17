import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../../../home/presentation/widgets/buttons/top_up_button.dart';
import '../../../home/presentation/widgets/common/security_info.dart';
import '../widgets/transaction_details_section.dart';
import '../widgets/card_details_section.dart';
import '../widgets/security_assurance_section.dart';
import '../../../home/presentation/widgets/dialogs/success_dialog.dart';

class TopUpDetailsScreen extends StatefulWidget {
  const TopUpDetailsScreen({super.key});

  @override
  State<TopUpDetailsScreen> createState() => _TopUpDetailsScreenState();
}

class _TopUpDetailsScreenState extends State<TopUpDetailsScreen> {
  bool _saveCardForFuture = false;

  void _handleTopUpConfirmation() async {
    // Show loading indicator or disable button here if needed

    // Simulate processing time
    await Future.delayed(const Duration(milliseconds: 500));

    if (mounted) {
      showDialog(
        context: context,
        builder: (dialogContext) {
          return SuccessDialog(
            title: context.localizations.topUpSuccessful,
            message: context.localizations.topUpSuccessMessage,
            transactionId: '1234567890',
            onOkPressed: () {
              // Close the dialog first
              Navigator.pop(dialogContext);
              // Then navigate back to home or wherever you want
              Navigator.pop(context); // Go back to previous screen
              // Or navigate to a specific route:
              // Navigator.pushNamedAndRemoveUntil(
              //   context,
              //   AppRoutes.home,
              //   (route) => false,
              // );
            },
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        centerTitle: false,
        leading: Padding(
          padding: EdgeInsets.only(bottom: 4.h),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20.sp,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text(
          context.localizations.topUpConfirmation,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12.h),
            const TransactionDetailsSection(),
            SizedBox(height: 20.h),
            CardDetailsSection(
              saveCardForFuture: _saveCardForFuture,
              onSaveCardChanged: (value) {
                setState(() {
                  _saveCardForFuture = value;
                });
              },
            ),
            SizedBox(height: 16.h),
            const SecurityAssuranceSection(),
            TopUpButton(
              buttonText: context.localizations.topUpConfirmation,
              onPressed: _handleTopUpConfirmation,
            ),
            SizedBox(height: 2.h),
            const SecurityInfo(),
            SizedBox(height: 4.h),
          ],
        ),
      ),
    );
  }
}

