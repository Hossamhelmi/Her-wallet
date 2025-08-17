import 'package:flutter/material.dart';
import 'package:her_wallet/features/wallet&payments/presentation/widgets/wallet_header_section.dart';
import 'package:her_wallet/features/wallet&payments/presentation/widgets/wallet_transactions_section.dart';

class WalletContentBody extends StatelessWidget {
  const WalletContentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [WalletHeaderSection(), WalletTransactionsSection()],
      ),
    );
  }
}
