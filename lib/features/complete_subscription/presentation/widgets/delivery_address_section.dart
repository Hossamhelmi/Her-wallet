import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/shared/widgets/custom_text_form_field.dart';
import 'package:her_wallet/features/complete_subscription/presentation/widgets/shadowed_container.dart';

class DeliveryAddressSection extends StatelessWidget {
  const DeliveryAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.localizations.deliveryAddress,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 2.h),
          _buildFormField(
            label: context.localizations.fullName,
            hintText: context.localizations.enterYourName,
          ),
          _buildFormField(
            label: context.localizations.phone,
            hintText: context.localizations.enterNumber,
          ),
           Text(context.localizations.city),
          SizedBox(height: 8.h),
          DropdownMenu(
            expandedInsets: EdgeInsets.zero,
            dropdownMenuEntries:  [
              DropdownMenuEntry(
                value: context.localizations.cairo,
                label: context.localizations.cairo,
              ),
              DropdownMenuEntry(
                value: context.localizations.alexandria,
                label: context.localizations.alexandria,
              ),
              DropdownMenuEntry(value: context.localizations.giza, label: context.localizations.giza),
            ],
            hintText: context.localizations.enterYourCity,
          ),
          SizedBox(height: 10.h),
          _buildFormField(
            label: context.localizations.neighborhood,
            hintText: context.localizations.enterYourNeighborhood,
          ),
          _buildFormField(
            label: context.localizations.streetAndDetailedAddress,
            hintText: context.localizations.enterStreetAndAddress,
          ),
          _buildFormField(
            label: context.localizations.additionalNotes,
            hintText: context.localizations.anyExtraNotes,
          ),
        ],
      ),
    );
  }

  Widget _buildFormField({required String label, required String hintText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(label), CustomTextFormField(hintText: hintText)],
    );
  }
}

