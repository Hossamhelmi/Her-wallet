# Flutter Localization Guide

## Setup Complete ✅

Your Flutter app now supports Arabic and English localization using Flutter's built-in internationalization system.

## How to Use Localization in Your App

### 1. Import the extension
```dart
import 'package:her_wallet/core/extensions/localization_extension.dart';
```

### 2. Use localized strings in your widgets
```dart
// Instead of using AppStrings.welcome
Text(context.localizations.welcome)

// Or using the extension method
Text(context.localizations.paymentServices)
```

### 3. Check current language
```dart
// Check if current language is Arabic
if (context.isArabic) {
  // Do something specific for Arabic
}

// Check if current language is English
if (context.isEnglish) {
  // Do something specific for English
}

// Get current language code
String languageCode = context.currentLanguageCode; // 'ar' or 'en'

// Get text direction
TextDirection direction = context.textDirection; // RTL for Arabic, LTR for English
```

### 4. Change language
```dart
import 'package:her_wallet/core/helpers/localization_helper.dart';

// Save a specific locale
await LocalizationHelper.saveLocale(const Locale('ar'));

// Toggle between languages
await LocalizationHelper.toggleLanguage(context);

// Check saved language
bool isArabic = await LocalizationHelper.isArabic();
```

### 5. Add language selection to your settings
```dart
import 'package:her_wallet/core/widgets/language_selection_widget.dart';

// Use the pre-built language selection button
LanguageSelectionButton(
  onPressed: () => _showLanguageDialog(context),
)

// Or use the dialog directly
showDialog(
  context: context,
  builder: (context) => LanguageSelectionDialog(
    onLanguageChanged: (locale) {
      // Handle language change
    },
  ),
);
```

## Adding New Strings

### 1. Add to English ARB file (`lib/l10n/app_en.arb`)
```json
{
  "newString": "Your English text here"
}
```

### 2. Add to Arabic ARB file (`lib/l10n/app_ar.arb`)
```json
{
  "newString": "النص العربي هنا"
}
```

### 3. Regenerate localization files
```bash
flutter gen-l10n
```

### 4. Use in your code
```dart
Text(context.localizations.newString)
```

## Migration from AppStrings

Instead of:
```dart
Text(AppStrings.welcome)
```

Use:
```dart
Text(context.localizations.welcome)
```

## Example Usage

Check the `LocalizationExampleScreen` in `lib/examples/localization_example_screen.dart` for a complete example.

## Files Structure

```
lib/
├── l10n/
│   ├── app_en.arb          # English strings
│   └── app_ar.arb          # Arabic strings
├── core/
│   ├── helpers/
│   │   └── localization_helper.dart    # Helper functions
│   ├── extensions/
│   │   └── localization_extension.dart # Context extensions
│   └── widgets/
│       └── language_selection_widget.dart # Language selection UI
└── examples/
    └── localization_example_screen.dart    # Usage example
```

## Notes

- The app automatically detects RTL for Arabic and applies appropriate text direction
- Language changes are persisted using SharedPreferences
- The app will restart with the new language on next launch
- All Flutter localization features are available (date formatting, number formatting, etc.)

## Ready to Use! 🎉

Your app now supports both Arabic and English with proper RTL support for Arabic text.
