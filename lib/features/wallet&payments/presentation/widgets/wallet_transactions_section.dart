import 'package:flutter/material.dart';
import 'package:her_wallet/features/recent_transactions/presentation/screens/recent_transactions_screen.dart';
import 'package:her_wallet/features/recent_transactions/presentation/widgets/transactions_list_section.dart';

class WalletTransactionsSection extends StatelessWidget {
  const WalletTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return TransactionsListSection(
      transactions: RecentTransactionsScreen.transactionItems,
    );
  }
}
