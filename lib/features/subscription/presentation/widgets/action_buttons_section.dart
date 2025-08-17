import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/features/subscription/presentation/cubits/subscription_cubit.dart';
import 'package:her_wallet/features/subscription/presentation/widgets/pause_subscription_dialog.dart';
import 'package:her_wallet/features/subscription/presentation/widgets/change_plan_dialog.dart';
import 'package:her_wallet/features/subscription/presentation/widgets/cancel_subscription_dialog.dart';

class ActionButtonsSection extends StatelessWidget {
  final SubscriptionCubit subscriptionCubit;
  const ActionButtonsSection({super.key, required this.subscriptionCubit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          _ActionButton(
            text: context.localizations.pause,
            onPressed: () => _showPauseDialog(context),
          ),
          SizedBox(width: 8.w),
          _ActionButton(
            text: context.localizations.changePlan,
            onPressed: () => _showChangePlanDialog(context),
          ),
          SizedBox(width: 8.w),
          _ActionButton(
            text: context.localizations.cancel,
            onPressed: () => _showCancelDialog(context),
          ),
        ],
      ),
    );
  }

  void _showPauseDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => BlocProvider.value(
        value: subscriptionCubit,
        child: const PauseSubscriptionDialog(),
      ),
    );
  }

  void _showChangePlanDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => BlocProvider.value(
            value: subscriptionCubit,
            child: const ChangePlanDialog(),
          ),
    );
  }

  void _showCancelDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const CancelSubscriptionDialog(),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const _ActionButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.textPrimary,
            height: 1.0,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
