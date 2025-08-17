import 'package:flutter/material.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/helpers/localization_helper.dart';
import 'package:her_wallet/core/state/app_state.dart';
import 'package:her_wallet/l10n/app_localizations.dart';

class LanguageSelectionDialog extends StatefulWidget {
  final Function(Locale) onLanguageChanged;

  const LanguageSelectionDialog({super.key, required this.onLanguageChanged});

  @override
  State<LanguageSelectionDialog> createState() =>
      _LanguageSelectionDialogState();
}

class _LanguageSelectionDialogState extends State<LanguageSelectionDialog> {
  String _selectedLanguage = 'en';

  @override
  void initState() {
    super.initState();
    _loadCurrentLanguage();
  }

  Future<void> _loadCurrentLanguage() async {
    final locale = await LocalizationHelper.getSavedLocale();
    setState(() {
      _selectedLanguage = locale.languageCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.language, color: AppColors.mainColor, size: 28),
          const SizedBox(width: 8),
          Text(
            localizations.language,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          // English Option
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color:
                    _selectedLanguage == 'en'
                        ? AppColors.mainColor
                        : Colors.grey.shade300,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: RadioListTile<String>(
              title: const Row(
                children: [
                  Text('🇺🇸', style: TextStyle(fontSize: 24)),
                  SizedBox(width: 12),
                  Text(
                    'English',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              value: 'en',
              groupValue: _selectedLanguage,
              activeColor: AppColors.mainColor,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value!;
                });
              },
            ),
          ),
          const SizedBox(height: 12),
          // Arabic Option
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color:
                    _selectedLanguage == 'ar'
                        ? AppColors.mainColor
                        : Colors.grey.shade300,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: RadioListTile<String>(
              title: const Row(
                children: [
                  Text('🇪🇬', style: TextStyle(fontSize: 24)),
                  SizedBox(width: 12),
                  Text(
                    'العربية',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              value: 'ar',
              groupValue: _selectedLanguage,
              activeColor: AppColors.mainColor,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value!;
                });
              },
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            localizations.cancel,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            final newLocale = Locale(_selectedLanguage);
            widget.onLanguageChanged(newLocale);

            // Save the locale and notify the app to change immediately
            await LocalizationHelper.saveLocale(newLocale);
            AppState().notifyLocaleChanged();

            if (context.mounted) {
              Navigator.of(context).pop();
            }
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            localizations.save,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}

// Widget to show language selection button (for use in other screens)
class LanguageSelectionButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const LanguageSelectionButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return ListTile(
      leading: const Icon(Icons.language),
      title: Text(localizations.language),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: onPressed ?? () => _showLanguageDialog(context),
    );
  }

  void _showLanguageDialog(BuildContext context) {
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
}
