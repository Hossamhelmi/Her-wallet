import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';

/// A bridge class to gradually migrate from AppStrings to localized strings
/// This allows you to keep the same syntax while using localized strings
class AppStrings {
  static BuildContext? _context;

  /// Call this method to set the context for localization
  static void init(BuildContext context) {
    _context = context;
  }

  /// Helper method to get localized string
  static String _getLocalized(String Function(BuildContext) getter) {
    if (_context == null) {
      throw Exception(
        'AppStrings not initialized. Call AppStrings.init(context) first.',
      );
    }
    return getter(_context!);
  }

  // All your existing strings but now using localization
  static String get appName =>
      _getLocalized((context) => context.localizations.appName);
  static String get welcome =>
      _getLocalized((context) => context.localizations.welcome);
  static String get login =>
      _getLocalized((context) => context.localizations.login);
  static String get signup =>
      _getLocalized((context) => context.localizations.signup);
  static String get phone =>
      _getLocalized((context) => context.localizations.phone);
  static String get fullName =>
      _getLocalized((context) => context.localizations.fullName);
  static String get enterYourName =>
      _getLocalized((context) => context.localizations.enterYourName);
  static String get enterNumber =>
      _getLocalized((context) => context.localizations.enterNumber);
  static String get loginIntoAccount =>
      _getLocalized((context) => context.localizations.loginIntoAccount);
  static String get createAnAccount =>
      _getLocalized((context) => context.localizations.createAnAccount);
  static String get startYourJourney =>
      _getLocalized((context) => context.localizations.startYourJourney);
  static String get joinApp =>
      _getLocalized((context) => context.localizations.joinApp);
  static String get agreeTerms =>
      _getLocalized((context) => context.localizations.agreeTerms);
  static String get password =>
      _getLocalized((context) => context.localizations.password);
  static String get enterPassword =>
      _getLocalized((context) => context.localizations.enterPassword);
  static String get forgotPassword =>
      _getLocalized((context) => context.localizations.forgotPassword);
  static String get forgotYourPassword =>
      _getLocalized((context) => context.localizations.forgotYourPassword);
  static String get passwordInstructions =>
      _getLocalized((context) => context.localizations.passwordInstructions);
  static String get forgotPasswordLine =>
      _getLocalized((context) => context.localizations.forgotPasswordLine);
  static String get newPassword =>
      _getLocalized((context) => context.localizations.newPassword);
  static String get confirmPassword =>
      _getLocalized((context) => context.localizations.confirmPassword);
  static String get enterNewPassword =>
      _getLocalized((context) => context.localizations.enterNewPassword);
  static String get enterConfirmPassword =>
      _getLocalized((context) => context.localizations.enterConfirmPassword);
  static String get newPasswordLine =>
      _getLocalized((context) => context.localizations.newPasswordLine);
  static String get enterVerificationCode =>
      _getLocalized((context) => context.localizations.enterVerificationCode);
  static String get verificationCodeLine =>
      _getLocalized((context) => context.localizations.verificationCodeLine);
  static String get rememberMe =>
      _getLocalized((context) => context.localizations.rememberMe);
  static String get save =>
      _getLocalized((context) => context.localizations.save);
  static String get confirm =>
      _getLocalized((context) => context.localizations.confirm);
  static String get resetPasswordSuccesfully => _getLocalized(
    (context) => context.localizations.resetPasswordSuccesfully,
  );
  static String get resetSuccessLine =>
      _getLocalized((context) => context.localizations.resetSuccessLine);
  static String get confirmYourCode =>
      _getLocalized((context) => context.localizations.confirmYourCode);
  static String get rememberYourPassword =>
      _getLocalized((context) => context.localizations.rememberYourPassword);
  static String get didnotReciveCode =>
      _getLocalized((context) => context.localizations.didnotReciveCode);
  static String get resendCode =>
      _getLocalized((context) => context.localizations.resendCode);
  static String get send =>
      _getLocalized((context) => context.localizations.send);
  static String get dontHaveAccount =>
      _getLocalized((context) => context.localizations.dontHaveAccount);
  static String get alreadyHaveAccount =>
      _getLocalized((context) => context.localizations.alreadyHaveAccount);
  static String get welcomeBack =>
      _getLocalized((context) => context.localizations.welcomeBack);
  static String get loginToAccess =>
      _getLocalized((context) => context.localizations.loginToAccess);
  static String get home =>
      _getLocalized((context) => context.localizations.home);
  static String get profile =>
      _getLocalized((context) => context.localizations.profile);
  static String get settings =>
      _getLocalized((context) => context.localizations.settings);
  static String get logout =>
      _getLocalized((context) => context.localizations.logout);
  static String get balance =>
      _getLocalized((context) => context.localizations.balance);
  static String get savingGoals =>
      _getLocalized((context) => context.localizations.savingGoals);
  static String get viewAll =>
      _getLocalized((context) => context.localizations.viewAll);
  static String get quickAccess =>
      _getLocalized((context) => context.localizations.quickAccess);
  static String get brideZone =>
      _getLocalized((context) => context.localizations.brideZone);
  static String get babyhub =>
      _getLocalized((context) => context.localizations.babyhub);
  static String get womensBazar =>
      _getLocalized((context) => context.localizations.womensBazar);
  static String get herSouq =>
      _getLocalized((context) => context.localizations.herSouq);
  static String get womenEmpowerment =>
      _getLocalized((context) => context.localizations.womenEmpowerment);
  static String get subscribtionBox =>
      _getLocalized((context) => context.localizations.subscribtionBox);
  static String get blog =>
      _getLocalized((context) => context.localizations.blog);
  static String get circles =>
      _getLocalized((context) => context.localizations.circles);
  static String get myCircle =>
      _getLocalized((context) => context.localizations.myCircle);
  static String get createNewCircle =>
      _getLocalized((context) => context.localizations.createNewCircle);
  static String get skinCare =>
      _getLocalized((context) => context.localizations.skinCare);
  static String get childCare =>
      _getLocalized((context) => context.localizations.childCare);
  static String get fashion =>
      _getLocalized((context) => context.localizations.fashion);
  static String get kitchen =>
      _getLocalized((context) => context.localizations.kitchen);
  static String get discoverMore =>
      _getLocalized((context) => context.localizations.discoverMore);
  static String get joinNow =>
      _getLocalized((context) => context.localizations.joinNow);
  static String get circleName =>
      _getLocalized((context) => context.localizations.circleName);
  static String get chooseANameForYourCircle => _getLocalized(
    (context) => context.localizations.chooseANameForYourCircle,
  );
  static String get circleDescription =>
      _getLocalized((context) => context.localizations.circleDescription);
  static String get describeYourCircle =>
      _getLocalized((context) => context.localizations.describeYourCircle);
  static String get category =>
      _getLocalized((context) => context.localizations.category);
  static String get selectCategory =>
      _getLocalized((context) => context.localizations.selectCategory);
  static String get coverImage =>
      _getLocalized((context) => context.localizations.coverImage);
  static String get chooseImageFromGallery =>
      _getLocalized((context) => context.localizations.chooseImageFromGallery);
  static String get selectImage =>
      _getLocalized((context) => context.localizations.selectImage);
  static String get circlePrivacy =>
      _getLocalized((context) => context.localizations.circlePrivacy);
  static String get public =>
      _getLocalized((context) => context.localizations.public);
  static String get private =>
      _getLocalized((context) => context.localizations.private);
  static String get circlePublicDescription =>
      _getLocalized((context) => context.localizations.circlePublicDescription);
  static String get circlePrivatePrivateDescription => _getLocalized(
    (context) => context.localizations.circlePrivatePrivateDescription,
  );
  static String get myPosts =>
      _getLocalized((context) => context.localizations.myPosts);
  static String get forHerServices =>
      _getLocalized((context) => context.localizations.forHerServices);
  static String get paymentServices =>
      _getLocalized((context) => context.localizations.paymentServices);
  static String get recentTransactions =>
      _getLocalized((context) => context.localizations.recentTransactions);
  static String get more =>
      _getLocalized((context) => context.localizations.more);
  static String get bazzar =>
      _getLocalized((context) => context.localizations.bazzar);
  static String get circle =>
      _getLocalized((context) => context.localizations.circle);
  static String get subscriptions =>
      _getLocalized((context) => context.localizations.subscriptions);

  // Add more as needed...
  static String get mentorship =>
      _getLocalized((context) => context.localizations.mentorship);
  static String get event =>
      _getLocalized((context) => context.localizations.event);
  static String get workshops =>
      _getLocalized((context) => context.localizations.workshops);
  static String get resources =>
      _getLocalized((context) => context.localizations.resources);
  static String get finding =>
      _getLocalized((context) => context.localizations.finding);
  static String get topRatedCoaches =>
      _getLocalized((context) => context.localizations.topRatedCoaches);
  static String get bookASession =>
      _getLocalized((context) => context.localizations.bookASession);
  static String get searchForService =>
      _getLocalized((context) => context.localizations.searchForService);
  static String get searchForProduct =>
      _getLocalized((context) => context.localizations.searchForProduct);
  static String get walletAndPayments =>
      _getLocalized((context) => context.localizations.walletAndPayments);
}
