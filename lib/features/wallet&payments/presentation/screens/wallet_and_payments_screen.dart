import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/core/shared/widgets/just_name_appbar.dart';
import 'package:her_wallet/features/wallet&payments/presentation/widgets/wallet_content_body.dart';

class WalletAndPaymentsScreen extends StatelessWidget {
  const WalletAndPaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JustNameAppBar(title: context.localizations.walletAndPayments),
      body: const WalletContentBody(),
    );
  }
}
