import 'dart:io';

void main() {
  print('🚀 Setting up Flutter project structure...\n');

  final directories = [
    'lib/app',
    'lib/core/constants',
    'lib/core/theme',
    'lib/core/utils',
    'lib/core/routes',
    'lib/shared/widgets/buttons',
    'lib/shared/widgets/cards',
    'lib/shared/widgets/inputs',
    'lib/shared/widgets/dialogs',
    'lib/shared/widgets/common',
    'lib/shared/components/app_bar',
    'lib/shared/components/bottom_nav',
    'lib/shared/components/loading',
    'lib/features/home/presentation/screens',
    'lib/features/home/presentation/widgets',
    'lib/features/home/presentation/components',
    'lib/features/auth/presentation/login/screens',
    'lib/features/auth/presentation/login/widgets',
    'lib/features/auth/presentation/login/components',
    'lib/features/auth/presentation/signup/screens',
    'lib/features/auth/presentation/signup/widgets',
    'lib/features/auth/presentation/signup/components',
    'lib/features/profile/presentation/screens',
    'lib/features/profile/presentation/widgets',
    'lib/features/profile/presentation/components',
    'lib/features/settings/presentation/screens',
    'lib/features/settings/presentation/widgets',
    'lib/features/settings/presentation/components',
    'lib/navigation',
    'assets/images/icons',
    'assets/images/illustrations',
    'assets/fonts',
  ];

  // Create directories
  int createdCount = 0;
  for (var dir in directories) {
    final directory = Directory(dir);
    if (!directory.existsSync()) {
      try {
        directory.createSync(recursive: true);
        print('✅ Created: $dir');
        createdCount++;
      } catch (e) {
        print('❌ Failed to create: $dir - $e');
      }
    } else {
      print('⚠️  Already exists: $dir');
    }
  }

  // Create essential files
  final files = {
    'lib/main.dart': _getMainContent(),
    'lib/app/app.dart': _getAppContent(),
    'lib/core/constants/app_colors.dart': _getAppColorsContent(),
    'lib/core/constants/app_strings.dart': _getAppStringsContent(),
    'lib/core/constants/app_sizes.dart': _getAppSizesContent(),
    'lib/core/theme/app_theme.dart': _getAppThemeContent(),
    'lib/core/routes/app_routes.dart': _getAppRoutesContent(),
    'lib/navigation/app_router.dart': _getAppRouterContent(),
    'lib/features/home/presentation/screens/home_screen.dart': _getHomeScreenContent(),
    'lib/features/auth/presentation/login/screens/login_screen.dart': _getLoginScreenContent(),
    'lib/shared/widgets/common/custom_button.dart': _getCustomButtonContent(),
  };

  int filesCreated = 0;
  for (var entry in files.entries) {
    try {
      final file = File(entry.key);
      if (!file.existsSync()) {
        file.createSync(recursive: true);
        file.writeAsStringSync(entry.value);
        print('📄 Created file: ${entry.key}');
        filesCreated++;
      } else {
        print('⚠️  File already exists: ${entry.key}');
      }
    } catch (e) {
      print('❌ Failed to create file: ${entry.key} - $e');
    }
  }

  print('\n🎉 Setup complete!');
  print('📁 Directories created: $createdCount');
  print('📄 Files created: $filesCreated');
  print('\n💡 Next steps:');
  print('  1. Run: flutter pub get');
  print('  2. Run: flutter run');
  print('  3. Start building your amazing UI! 🎨');
}

String _getMainContent() => '''
import 'package:flutter/material.dart';
import 'app/app.dart';

void main() {
  runApp(const MyApp());
}
''';

String _getAppContent() => '''
import 'package:flutter/material.dart';
import '../core/theme/app_theme.dart';
import '../core/routes/app_routes.dart';
import '../features/home/presentation/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
''';

String _getAppColorsContent() => '''
import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF6366F1);
  static const Color secondary = Color(0xFF8B5CF6);
  static const Color background = Color(0xFFF8FAFC);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color error = Color(0xFFEF4444);
  static const Color success = Color(0xFF10B981);
  static const Color warning = Color(0xFFF59E0B);
  static const Color info = Color(0xFF3B82F6);
  
  // Text colors
  static const Color textPrimary = Color(0xFF1F2937);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textDisabled = Color(0xFF9CA3AF);
  
  // Dark theme colors
  static const Color darkBackground = Color(0xFF111827);
  static const Color darkSurface = Color(0xFF1F2937);
  static const Color darkTextPrimary = Color(0xFFF9FAFB);
  static const Color darkTextSecondary = Color(0xFFD1D5DB);
}
''';

String _getAppStringsContent() => '''
class AppStrings {
  static const String appName = 'My Flutter App';
  static const String welcome = 'Welcome';
  static const String login = 'Login';
  static const String signup = 'Sign Up';
  static const String email = 'Email';
  static const String password = 'Password';
  static const String forgotPassword = 'Forgot Password?';
  static const String dontHaveAccount = "Don't have an account?";
  static const String alreadyHaveAccount = 'Already have an account?';
  static const String home = 'Home';
  static const String profile = 'Profile';
  static const String settings = 'Settings';
  static const String logout = 'Logout';
}
''';

String _getAppSizesContent() => '''
class AppSizes {
  // Padding and margins
  static const double paddingXS = 4.0;
  static const double paddingS = 8.0;
  static const double paddingM = 16.0;
  static const double paddingL = 24.0;
  static const double paddingXL = 32.0;
  
  // Border radius
  static const double radiusS = 4.0;
  static const double radiusM = 8.0;
  static const double radiusL = 12.0;
  static const double radiusXL = 16.0;
  
  // Icon sizes
  static const double iconS = 16.0;
  static const double iconM = 24.0;
  static const double iconL = 32.0;
  static const double iconXL = 48.0;
  
  // Button heights
  static const double buttonHeightS = 32.0;
  static const double buttonHeightM = 48.0;
  static const double buttonHeightL = 56.0;
}
''';

String _getAppThemeContent() => '''
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.surface,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
        centerTitle: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.dark,
      ),
      scaffoldBackgroundColor: AppColors.darkBackground,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkSurface,
        foregroundColor: AppColors.darkTextPrimary,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}
''';

String _getAppRoutesContent() => '''
import 'package:flutter/material.dart';
import '../features/home/presentation/screens/home_screen.dart';
import '../features/auth/presentation/login/screens/login_screen.dart';

class AppRoutes {
  static const String home = '/home';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String profile = '/profile';
  static const String settings = '/settings';

  static Map<String, WidgetBuilder> get routes {
    return {
      home: (context) => const HomeScreen(),
      login: (context) => const LoginScreen(),
      // Add more routes here
    };
  }
}
''';

String _getAppRouterContent() => '''
import 'package:flutter/material.dart';
import '../core/routes/app_routes.dart';

class AppRouter {
  static void navigateTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  static void navigateAndReplace(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  static void navigateAndClearStack(BuildContext context, String routeName) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      routeName,
      (route) => false,
    );
  }

  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}
''';

String _getHomeScreenContent() => '''
import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.home),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              size: 80,
              color: Colors.blue,
            ),
            SizedBox(height: 16),
            Text(
              AppStrings.welcome,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Your Flutter app is ready!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
''';

String _getLoginScreenContent() => '''
import 'package:flutter/material.dart';
import '../../../../../core/constants/app_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.login),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.login,
              size: 80,
              color: Colors.blue,
            ),
            SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                labelText: AppStrings.email,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: AppStrings.password,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: null,
                child: Text(AppStrings.login),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
''';

String _getCustomButtonContent() => '''
import 'package:flutter/material.dart';
import '../../../core/constants/app_sizes.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double height;
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height = AppSizes.buttonHeightM,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusM),
          ),
        ),
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              )
            : Text(text),
      ),
    );
  }
}
''';