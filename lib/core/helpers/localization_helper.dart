import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationHelper {
  static const String _languageCodeKey = 'language_code';
  static const String _defaultLanguageCode = 'en';

  // Get saved locale from SharedPreferences
  static Future<Locale> getSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode =
        prefs.getString(_languageCodeKey) ?? _defaultLanguageCode;
    return Locale(languageCode);
  }

  // Save locale to SharedPreferences
  static Future<void> saveLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageCodeKey, locale.languageCode);
  }

  // Change language
  static Future<void> changeLanguage(
    BuildContext context,
    Locale locale,
  ) async {
    await saveLocale(locale);
    // Restart the app or use a state management solution to rebuild the app
    // For now, we'll just save it and it will take effect on next app start
  }

  // Toggle between English and Arabic
  static Future<void> toggleLanguage(BuildContext context) async {
    final currentLocale = await getSavedLocale();
    final newLocale =
        currentLocale.languageCode == 'en'
            ? const Locale('ar')
            : const Locale('en');
    await changeLanguage(context, newLocale);
  }

  // Check if current language is Arabic
  static Future<bool> isArabic() async {
    final locale = await getSavedLocale();
    return locale.languageCode == 'ar';
  }

  // Check if current language is English
  static Future<bool> isEnglish() async {
    final locale = await getSavedLocale();
    return locale.languageCode == 'en';
  }

  // Get language display name
  static String getLanguageDisplayName(String languageCode) {
    switch (languageCode) {
      case 'ar':
        return 'العربية';
      case 'en':
        return 'English';
      default:
        return 'English';
    }
  }
}
