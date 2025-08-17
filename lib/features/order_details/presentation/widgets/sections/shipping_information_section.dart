import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import '../components/info_card.dart';

class ShippingInformationSection extends StatelessWidget {
  final String name;
  final String address;
  final String city;
  final String phone;

  const ShippingInformationSection({
    super.key,
    required this.name,
    required this.address,
    required this.city,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      title: context.localizations.shippingInformation,
      infoRows: [
        InfoRow(label: context.localizations.nameLabel, value: name, isBold: true),
        InfoRow(label: context.localizations.address, value: address),
        InfoRow(label: context.localizations.city, value: city),
        InfoRow(label: 'Phone', value: phone),
      ],
    );
  }
}

