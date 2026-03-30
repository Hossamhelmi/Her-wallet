import 'package:flutter/material.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';

class SavingGoalsPaymentScreen extends StatelessWidget {
  final String title;

  const SavingGoalsPaymentScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(title: 'Saving Goals Payment'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.grey200,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      'EGP 49,00 / EGP 1500,00',
                      style: TextStyle(fontSize: 14, color: AppColors.appBar),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                LinearProgressIndicator(
                  value: 100 / 500,
                  backgroundColor: Colors.grey[300],
                  color: AppColors.appBar,
                  minHeight: 8,
                ),
                SizedBox(height: 10),
                Text(
                  'Installment Amount: EGP 50',
                  style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Pay Installment'),
                  ),
                ),
                // List of saving goals
              ],
            ),
          ),
        ),
      ),
    );
  }
}
