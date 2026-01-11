import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/core/theme/app_theme.dart';
import 'package:her_wallet/core/helpers/localization_helper.dart';
import 'package:her_wallet/core/state/app_state.dart';
import 'package:her_wallet/l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');

  @override
  void initState() {
    super.initState();
    _loadSavedLocale();
    // Set up global app state callback
    AppState().setOnLocaleChanged(() {
      _reloadLocale();
    });
  }

  Future<void> _loadSavedLocale() async {
    final locale = await LocalizationHelper.getSavedLocale();
    setState(() {
      _locale = locale;
    });
  }

  Future<void> _reloadLocale() async {
    final locale = await LocalizationHelper.getSavedLocale();
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(440, 956),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Her Wallet',
        theme: AppTheme.lightTheme,
      //  routes: AppRoutes.routes,
        initialRoute: AppRoutes.splash,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        debugShowCheckedModeBanner: false,
        locale: _locale,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en'), Locale('ar')],
        builder: (context, child) {
          // Force RTL for Arabic
          if (_locale.languageCode == 'ar') {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: child!,
            );
          }
          return child!;
        },
      ),
    );
  }
}
