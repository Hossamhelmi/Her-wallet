import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import '../widgets/balance_display_section.dart';
import '../widgets/payment_method_section.dart';
import '../widgets/amount_input_section.dart';
import '../../../../core/shared/widgets/radio_selection_section.dart';
import '../widgets/recent_topups_section.dart';
import '../../../home/presentation/widgets/buttons/top_up_button.dart';
import '../../../home/presentation/widgets/common/security_info.dart';

class TopUpBalanceScreen extends StatefulWidget {
  const TopUpBalanceScreen({super.key});

  @override
  State<TopUpBalanceScreen> createState() => _TopUpBalanceScreenState();
}

class _TopUpBalanceScreenState extends State<TopUpBalanceScreen> {
  String _selectedMethod = 'bank_card';
  int? _selectedAmount;
  final TextEditingController _amountController = TextEditingController();
  final List<int> _predefinedAmounts = [100, 150, 200, 250, 500, 1000];

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  void _onMethodSelected(String method) {
    setState(() {
      _selectedMethod = method;
    });
  }

  void _onAmountSelected(amount) {
    setState(() {
      _selectedAmount = amount;
      _amountController.text = amount.toString();
    });
  }

  void _onTextChanged(String value) {
    if (_selectedAmount != null) {
      setState(() {
        _selectedAmount = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final bool isSendMoney = args['isSendMoney'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        centerTitle: false,
        leading: Padding(
          padding: EdgeInsets.only(bottom: 4.h),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 20.sp,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text(
          isSendMoney ? context.localizations.sendMoney : context.localizations.topUpYourBalance,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BalanceDisplaySection(),
            SizedBox(height: 4.h),
            PaymentMethodSection(
              selectedMethod: _selectedMethod,
              onMethodSelected: _onMethodSelected,
            ),
            AmountInputSection(
              controller: _amountController,
              onChanged: _onTextChanged,
            ),
            SizedBox(height: 8.h),
            RadioSelectionSection(
              title: context.localizations.quickAmounts,
              list: _predefinedAmounts,
              selected: _selectedAmount,
              onSelected: _onAmountSelected,
            ),
            SizedBox(height: 8.h),
            TopUpButton(

              buttonText: isSendMoney ? context.localizations.sendMoney : context.localizations.topUpNow,
              onPressed: () {
                // Handle top-up action here
                Navigator.pushNamed(
                  context,
                  AppRoutes.topUpDetails,
                ); // Example navigation
              },
            ),
            const SecurityInfo(),
            SizedBox(height: 16.h),
            const RecentTopUpsSection(),
            SizedBox(height: 5.h),
          ],
        ),
      ),
    );
  }
}

