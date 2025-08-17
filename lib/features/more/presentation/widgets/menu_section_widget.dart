import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/core/shared/components/language_selection_widget.dart';
import 'package:her_wallet/features/more/presentation/cubit/more_cubit.dart';
import 'package:her_wallet/features/more/presentation/widgets/menu_item_widget.dart';
import 'package:her_wallet/features/more/presentation/widgets/change_password_dialog.dart';
import 'package:her_wallet/features/more/presentation/widgets/logout_dialog.dart';

class MenuSectionWidget extends StatelessWidget {
  const MenuSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Account Section
            _buildSectionHeader(context.localizations.account),
            MenuItemWidget(
              icon: Icons.wallet_outlined,
              title: context.localizations.walletAndPaymentsMenu,
              iconColor: AppColors.lightGreenIcon,
              backgroundColor: AppColors.lightGreenIcon.withAlpha(20),
              fontSize: 14.sp,
              onTap:
                  () =>
                      Navigator.pushNamed(context, AppRoutes.walletAndPayments),
            ),
            MenuItemWidget(
              icon: Icons.badge_outlined,
              title: context.localizations.myOrders,
              iconColor: AppColors.primary,
              backgroundColor: AppColors.primary.withAlpha(20),
              onTap: () => Navigator.pushNamed(context, AppRoutes.myOrders),
            ),
            MenuItemWidget(
              icon: Icons.subscriptions_outlined,
              title: context.localizations.subscriptionBoxes,
              iconColor: AppColors.yellowIcon,
              backgroundColor: AppColors.yellowIcon.withAlpha(20),
              onTap:
                  () =>
                      Navigator.pushNamed(context, AppRoutes.subscriptionBoxes),
            ),
            MenuItemWidget(
              icon: Icons.favorite_outline,
              title: context.localizations.favorites,
              iconColor: AppColors.redIcon,
              backgroundColor: AppColors.redIcon.withAlpha(20),
              onTap: () => Navigator.pushNamed(context, AppRoutes.favorites),
            ),

            _buildDivider(),

            // Settings Section
            _buildSectionHeader(context.localizations.settings),
            MenuItemWidget(
              icon: Icons.language_outlined,
              title: context.localizations.language,
              iconColor: AppColors.orangeIcon,
              backgroundColor: AppColors.orangeIcon.withAlpha(20),
              onTap: () => showLanguageDialog(context),
            ),
            MenuItemWidget(
              icon: Icons.notifications_outlined,
              title: context.localizations.notifications,
              iconColor: AppColors.yellowIcon,
              backgroundColor: AppColors.yellowIcon.withAlpha(20),
              onTap: () {},
              trailing: Switch(
                value: context.watch<MoreCubit>().state.notificationsEnabled,
                onChanged: (value) {
                  context.read<MoreCubit>().toggleNotifications();
                },
                activeColor: AppColors.mainColor,
                thumbColor: const WidgetStatePropertyAll(Colors.white),
              ),
            ),
            MenuItemWidget(
              icon: Icons.lock_outline,
              title: context.localizations.changePassword,
              iconColor: AppColors.blueIcon,
              backgroundColor: AppColors.blueIcon.withAlpha(20),
              onTap: () => _showChangePasswordDialog(context),
            ),

            _buildDivider(),

            // Support Section
            _buildSectionHeader(context.localizations.support),
            MenuItemWidget(
              icon: Icons.policy_outlined,
              title: context.localizations.termsAndConditions,
              iconColor: AppColors.greyIcon,
              backgroundColor: AppColors.greyIcon.withAlpha(20),
              onTap:
                  () => Navigator.pushNamed(
                    context,
                    AppRoutes.termsAndConditions,
                  ),
            ),
            MenuItemWidget(
              icon: Icons.shield_outlined,
              title: context.localizations.privacyPolicy,
              iconColor: AppColors.orangeIcon,
              backgroundColor: AppColors.orangeIcon.withAlpha(20),
              onTap:
                  () => Navigator.pushNamed(context, AppRoutes.privacyPolicy),
            ),
            MenuItemWidget(
              icon: Icons.help_outline,
              title: context.localizations.helpAndSupport,
              iconColor: AppColors.lightGreenIcon,
              backgroundColor: AppColors.lightGreenIcon.withAlpha(20),
              onTap: () {},
            ),

            _buildDivider(),

            // Account Actions
            MenuItemWidget(
              icon: Icons.logout_outlined,
              title: context.localizations.logOut,
              iconColor: AppColors.redIcon,
              backgroundColor: AppColors.redIcon.withAlpha(20),
              onTap: () => _showLogoutDialog(context),
            ),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, top: 16.h, right: 16.w),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textSecondary,
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Divider(color: AppColors.grey200, thickness: 1),
    );
  }

  void _showChangePasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const ChangePasswordDialog(),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(context: context, builder: (context) => const LogoutDialog());
  }
}

void showLanguageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder:
        (context) => LanguageSelectionDialog(
          onLanguageChanged: (locale) {
            // Show success message
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Language changed successfully!',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                backgroundColor: Theme.of(context).colorScheme.primary,
                duration: const Duration(seconds: 2),
              ),
            );
          },
        ),
  );
}
