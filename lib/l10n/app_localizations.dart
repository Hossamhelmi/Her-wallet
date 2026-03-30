import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Her Wallet Cash'**
  String get appName;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signup;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @enterYourName.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get enterYourName;

  /// No description provided for @enterNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter phone number'**
  String get enterNumber;

  /// No description provided for @loginIntoAccount.
  ///
  /// In en, this message translates to:
  /// **'Login into Account'**
  String get loginIntoAccount;

  /// No description provided for @createAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAnAccount;

  /// No description provided for @startYourJourney.
  ///
  /// In en, this message translates to:
  /// **'Start your journey'**
  String get startYourJourney;

  /// No description provided for @joinApp.
  ///
  /// In en, this message translates to:
  /// **'Join the HerWallet community to manage your money with ease and security'**
  String get joinApp;

  /// No description provided for @agreeTerms.
  ///
  /// In en, this message translates to:
  /// **'I agree to the Terms & Conditions and Privacy Policy'**
  String get agreeTerms;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get enterPassword;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @forgotYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password'**
  String get forgotYourPassword;

  /// No description provided for @passwordInstructions.
  ///
  /// In en, this message translates to:
  /// **'We recommend using at least 8 characters, with numbers or symbols.'**
  String get passwordInstructions;

  /// No description provided for @forgotPasswordLine.
  ///
  /// In en, this message translates to:
  /// **'Enter your phone number or email and we\'ll send you a code to reset your password.'**
  String get forgotPasswordLine;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm New Password'**
  String get confirmPassword;

  /// No description provided for @enterNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter new password'**
  String get enterNewPassword;

  /// No description provided for @enterConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter confirm password'**
  String get enterConfirmPassword;

  /// No description provided for @newPasswordLine.
  ///
  /// In en, this message translates to:
  /// **'Now you can choose a new password for your account Make sure it\'s strong, yet easy to remember.'**
  String get newPasswordLine;

  /// No description provided for @enterVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Enter Verification Code'**
  String get enterVerificationCode;

  /// No description provided for @verificationCodeLine.
  ///
  /// In en, this message translates to:
  /// **'We\'ve sent you a 5-digit code to your phone or email.Please enter it here so we can continue'**
  String get verificationCodeLine;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @resetPasswordSuccesfully.
  ///
  /// In en, this message translates to:
  /// **'Password Reset Successful'**
  String get resetPasswordSuccesfully;

  /// No description provided for @resetSuccessLine.
  ///
  /// In en, this message translates to:
  /// **'Go ahead and log in to enjoy HerWallet with confidence.'**
  String get resetSuccessLine;

  /// No description provided for @confirmYourCode.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirmYourCode;

  /// No description provided for @rememberYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Remember your password?'**
  String get rememberYourPassword;

  /// No description provided for @didnotReciveCode.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive a code?'**
  String get didnotReciveCode;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get resendCode;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back!'**
  String get welcomeBack;

  /// No description provided for @loginToAccess.
  ///
  /// In en, this message translates to:
  /// **'Log in to access your wallet.'**
  String get loginToAccess;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @balance.
  ///
  /// In en, this message translates to:
  /// **'Your Balance'**
  String get balance;

  /// No description provided for @savingGoals.
  ///
  /// In en, this message translates to:
  /// **'Saving Goals'**
  String get savingGoals;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @quickAccess.
  ///
  /// In en, this message translates to:
  /// **'Quick Access'**
  String get quickAccess;

  /// No description provided for @brideZone.
  ///
  /// In en, this message translates to:
  /// **'Bride Zone'**
  String get brideZone;

  /// No description provided for @babyhub.
  ///
  /// In en, this message translates to:
  /// **'BabyHub'**
  String get babyhub;

  /// No description provided for @womensBazar.
  ///
  /// In en, this message translates to:
  /// **'Women\'s Bazar'**
  String get womensBazar;

  /// No description provided for @addsHub.
  ///
  /// In en, this message translates to:
  /// **'Adds Hub'**
  String get addsHub;

  /// No description provided for @womenEmpowerment.
  ///
  /// In en, this message translates to:
  /// **'Women Empowerment'**
  String get womenEmpowerment;

  /// No description provided for @subscribtionBox.
  ///
  /// In en, this message translates to:
  /// **'Subscription Box'**
  String get subscribtionBox;

  /// No description provided for @blog.
  ///
  /// In en, this message translates to:
  /// **'Blog'**
  String get blog;

  /// No description provided for @circles.
  ///
  /// In en, this message translates to:
  /// **'Circles'**
  String get circles;

  /// No description provided for @myCircle.
  ///
  /// In en, this message translates to:
  /// **'My Circle'**
  String get myCircle;

  /// No description provided for @createNewCircle.
  ///
  /// In en, this message translates to:
  /// **'Create New Circle'**
  String get createNewCircle;

  /// No description provided for @skinCare.
  ///
  /// In en, this message translates to:
  /// **'SkinCare'**
  String get skinCare;

  /// No description provided for @childCare.
  ///
  /// In en, this message translates to:
  /// **'ChildCare'**
  String get childCare;

  /// No description provided for @fashion.
  ///
  /// In en, this message translates to:
  /// **'Fashion'**
  String get fashion;

  /// No description provided for @kitchen.
  ///
  /// In en, this message translates to:
  /// **'Kitchen'**
  String get kitchen;

  /// No description provided for @discoverMore.
  ///
  /// In en, this message translates to:
  /// **'Discover More'**
  String get discoverMore;

  /// No description provided for @joinNow.
  ///
  /// In en, this message translates to:
  /// **'Join Now'**
  String get joinNow;

  /// No description provided for @circleName.
  ///
  /// In en, this message translates to:
  /// **'Circle Name'**
  String get circleName;

  /// No description provided for @chooseANameForYourCircle.
  ///
  /// In en, this message translates to:
  /// **'Choose a name for your circle...'**
  String get chooseANameForYourCircle;

  /// No description provided for @circleDescription.
  ///
  /// In en, this message translates to:
  /// **'Circle Description'**
  String get circleDescription;

  /// No description provided for @describeYourCircle.
  ///
  /// In en, this message translates to:
  /// **'Write short description about your circle...'**
  String get describeYourCircle;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @selectCategory.
  ///
  /// In en, this message translates to:
  /// **'Select a category'**
  String get selectCategory;

  /// No description provided for @coverImage.
  ///
  /// In en, this message translates to:
  /// **'Cover Image'**
  String get coverImage;

  /// No description provided for @chooseImageFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Choose image from gallery'**
  String get chooseImageFromGallery;

  /// No description provided for @selectImage.
  ///
  /// In en, this message translates to:
  /// **'Select Image'**
  String get selectImage;

  /// No description provided for @circlePrivacy.
  ///
  /// In en, this message translates to:
  /// **'Circle Privacy'**
  String get circlePrivacy;

  /// No description provided for @public.
  ///
  /// In en, this message translates to:
  /// **'Public'**
  String get public;

  /// No description provided for @private.
  ///
  /// In en, this message translates to:
  /// **'Private'**
  String get private;

  /// No description provided for @circlePublicDescription.
  ///
  /// In en, this message translates to:
  /// **'Anyone can join and \nparticipate'**
  String get circlePublicDescription;

  /// No description provided for @circlePrivatePrivateDescription.
  ///
  /// In en, this message translates to:
  /// **'Only invited members can \njoin and view comments'**
  String get circlePrivatePrivateDescription;

  /// No description provided for @myPosts.
  ///
  /// In en, this message translates to:
  /// **'My Posts'**
  String get myPosts;

  /// No description provided for @forHerServices.
  ///
  /// In en, this message translates to:
  /// **'For Her Services'**
  String get forHerServices;

  /// No description provided for @paymentServices.
  ///
  /// In en, this message translates to:
  /// **'Payment Services'**
  String get paymentServices;

  /// No description provided for @recentTransactions.
  ///
  /// In en, this message translates to:
  /// **'Recent Transactions'**
  String get recentTransactions;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @bazzar.
  ///
  /// In en, this message translates to:
  /// **'Bazzar'**
  String get bazzar;

  /// No description provided for @circle.
  ///
  /// In en, this message translates to:
  /// **'Circle'**
  String get circle;

  /// No description provided for @subscriptions.
  ///
  /// In en, this message translates to:
  /// **'Subscriptions'**
  String get subscriptions;

  /// No description provided for @addNewGoal.
  ///
  /// In en, this message translates to:
  /// **'Add New Goal'**
  String get addNewGoal;

  /// No description provided for @goalName.
  ///
  /// In en, this message translates to:
  /// **'Goal Name'**
  String get goalName;

  /// No description provided for @enterGoalName.
  ///
  /// In en, this message translates to:
  /// **'Enter goal name'**
  String get enterGoalName;

  /// No description provided for @totalAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get totalAmount;

  /// No description provided for @enterTotalAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter total amount'**
  String get enterTotalAmount;

  /// No description provided for @dailyTarget.
  ///
  /// In en, this message translates to:
  /// **'Daily Target'**
  String get dailyTarget;

  /// No description provided for @enterDailyTarget.
  ///
  /// In en, this message translates to:
  /// **'Enter daily target'**
  String get enterDailyTarget;

  /// No description provided for @goalDate.
  ///
  /// In en, this message translates to:
  /// **'Goal Date'**
  String get goalDate;

  /// No description provided for @goalDatePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Year / Month / Day'**
  String get goalDatePlaceholder;

  /// No description provided for @saveGoal.
  ///
  /// In en, this message translates to:
  /// **'Save Goal'**
  String get saveGoal;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @topUpYourBalance.
  ///
  /// In en, this message translates to:
  /// **'Top Up Your Balance'**
  String get topUpYourBalance;

  /// No description provided for @chooseTopUpMethod.
  ///
  /// In en, this message translates to:
  /// **'Choose Top-Up Method'**
  String get chooseTopUpMethod;

  /// No description provided for @howMuchTopUp.
  ///
  /// In en, this message translates to:
  /// **'How much would you like to top up?'**
  String get howMuchTopUp;

  /// No description provided for @enterAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter amount'**
  String get enterAmount;

  /// No description provided for @quickAmounts.
  ///
  /// In en, this message translates to:
  /// **'Quick amounts'**
  String get quickAmounts;

  /// No description provided for @topUpNow.
  ///
  /// In en, this message translates to:
  /// **'Top Up Now'**
  String get topUpNow;

  /// No description provided for @paymentSecure.
  ///
  /// In en, this message translates to:
  /// **'Your payment is encrypted and 100% secure.'**
  String get paymentSecure;

  /// No description provided for @recentTopUps.
  ///
  /// In en, this message translates to:
  /// **'Recent Top-Ups'**
  String get recentTopUps;

  /// No description provided for @toppedUpViaBankCard.
  ///
  /// In en, this message translates to:
  /// **'Topped up via bank card'**
  String get toppedUpViaBankCard;

  /// No description provided for @toppedUpViaBankAccount.
  ///
  /// In en, this message translates to:
  /// **'Topped up via bank account'**
  String get toppedUpViaBankAccount;

  /// No description provided for @toppedUpViaWallet.
  ///
  /// In en, this message translates to:
  /// **'Topped up via digital wallet'**
  String get toppedUpViaWallet;

  /// No description provided for @topUpConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Top Up Confirmation'**
  String get topUpConfirmation;

  /// No description provided for @transactionDetails.
  ///
  /// In en, this message translates to:
  /// **'Transaction Details'**
  String get transactionDetails;

  /// No description provided for @amountToTopUp.
  ///
  /// In en, this message translates to:
  /// **'Amount to Top-Up'**
  String get amountToTopUp;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @serviceFee.
  ///
  /// In en, this message translates to:
  /// **'Service Fee'**
  String get serviceFee;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @bankCard.
  ///
  /// In en, this message translates to:
  /// **'Bank Card'**
  String get bankCard;

  /// No description provided for @bankAccount.
  ///
  /// In en, this message translates to:
  /// **'Bank Account'**
  String get bankAccount;

  /// No description provided for @cardDetails.
  ///
  /// In en, this message translates to:
  /// **'Card Details'**
  String get cardDetails;

  /// No description provided for @cardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get cardNumber;

  /// No description provided for @xxxxForCards.
  ///
  /// In en, this message translates to:
  /// **'**** **** **** 1234'**
  String get xxxxForCards;

  /// No description provided for @expiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiry Date'**
  String get expiryDate;

  /// No description provided for @securityCodeCVV.
  ///
  /// In en, this message translates to:
  /// **'Security Code (CVV)'**
  String get securityCodeCVV;

  /// No description provided for @mmYY.
  ///
  /// In en, this message translates to:
  /// **'MM/YY'**
  String get mmYY;

  /// No description provided for @cvv.
  ///
  /// In en, this message translates to:
  /// **'CVV'**
  String get cvv;

  /// No description provided for @cardholderName.
  ///
  /// In en, this message translates to:
  /// **'Cardholder Name'**
  String get cardholderName;

  /// No description provided for @enterCardholderName.
  ///
  /// In en, this message translates to:
  /// **'Enter Cardholder Name'**
  String get enterCardholderName;

  /// No description provided for @saveCardForFuture.
  ///
  /// In en, this message translates to:
  /// **'Save this card for future transactions.'**
  String get saveCardForFuture;

  /// No description provided for @secureTransactions.
  ///
  /// In en, this message translates to:
  /// **'100% Secure Transactions'**
  String get secureTransactions;

  /// No description provided for @advancedEncryption.
  ///
  /// In en, this message translates to:
  /// **'We use advanced encryption to keep your data and money secure.'**
  String get advancedEncryption;

  /// No description provided for @topUpSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Top-Up Successful!'**
  String get topUpSuccessful;

  /// No description provided for @topUpSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'EGP 500.00 has been added to your wallet balance.'**
  String get topUpSuccessMessage;

  /// No description provided for @transactionId.
  ///
  /// In en, this message translates to:
  /// **'Transaction ID:'**
  String get transactionId;

  /// No description provided for @backToHome.
  ///
  /// In en, this message translates to:
  /// **'Back to Home'**
  String get backToHome;

  /// No description provided for @searchInYourTransactions.
  ///
  /// In en, this message translates to:
  /// **'Search in your transactions'**
  String get searchInYourTransactions;

  /// No description provided for @transactionList.
  ///
  /// In en, this message translates to:
  /// **'Transaction List'**
  String get transactionList;

  /// No description provided for @filterTransactions.
  ///
  /// In en, this message translates to:
  /// **'Filter Transactions'**
  String get filterTransactions;

  /// No description provided for @dateRange.
  ///
  /// In en, this message translates to:
  /// **'Date Range'**
  String get dateRange;

  /// No description provided for @transactionsType.
  ///
  /// In en, this message translates to:
  /// **'Transactions Type'**
  String get transactionsType;

  /// No description provided for @allTransactions.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get allTransactions;

  /// No description provided for @incomeTransactions.
  ///
  /// In en, this message translates to:
  /// **'Incoming'**
  String get incomeTransactions;

  /// No description provided for @outcomingTransactions.
  ///
  /// In en, this message translates to:
  /// **'Outcoming'**
  String get outcomingTransactions;

  /// No description provided for @noTransactionsFound.
  ///
  /// In en, this message translates to:
  /// **'No transactions found'**
  String get noTransactionsFound;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @defaultHintDate.
  ///
  /// In en, this message translates to:
  /// **'06/12/2025'**
  String get defaultHintDate;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @createNewPost.
  ///
  /// In en, this message translates to:
  /// **'Create New Post'**
  String get createNewPost;

  /// No description provided for @postContent.
  ///
  /// In en, this message translates to:
  /// **'Post Content'**
  String get postContent;

  /// No description provided for @enterPostContent.
  ///
  /// In en, this message translates to:
  /// **'Enter your post content here...'**
  String get enterPostContent;

  /// No description provided for @image.
  ///
  /// In en, this message translates to:
  /// **'Image'**
  String get image;

  /// No description provided for @text.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get text;

  /// No description provided for @addCommentWithPhoto.
  ///
  /// In en, this message translates to:
  /// **'Add a comment with a photo (optional)...'**
  String get addCommentWithPhoto;

  /// No description provided for @shareYourThoughts.
  ///
  /// In en, this message translates to:
  /// **'Share your thoughts in the group...'**
  String get shareYourThoughts;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @postComments.
  ///
  /// In en, this message translates to:
  /// **'Post Comments'**
  String get postComments;

  /// No description provided for @comments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get comments;

  /// No description provided for @writeAComment.
  ///
  /// In en, this message translates to:
  /// **'Write a comment...'**
  String get writeAComment;

  /// No description provided for @post.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get post;

  /// No description provided for @commentPosted.
  ///
  /// In en, this message translates to:
  /// **'Comment Posted'**
  String get commentPosted;

  /// No description provided for @memberManagement.
  ///
  /// In en, this message translates to:
  /// **'Member Management'**
  String get memberManagement;

  /// No description provided for @searchForMember.
  ///
  /// In en, this message translates to:
  /// **'Search for a member...'**
  String get searchForMember;

  /// No description provided for @joinRequests.
  ///
  /// In en, this message translates to:
  /// **'Join Requests'**
  String get joinRequests;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @reject.
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get reject;

  /// No description provided for @members.
  ///
  /// In en, this message translates to:
  /// **'Members'**
  String get members;

  /// No description provided for @subscriptionPlans.
  ///
  /// In en, this message translates to:
  /// **'Subscription Plans'**
  String get subscriptionPlans;

  /// No description provided for @subscriptionBoxes.
  ///
  /// In en, this message translates to:
  /// **'Subscription Boxes'**
  String get subscriptionBoxes;

  /// No description provided for @planName.
  ///
  /// In en, this message translates to:
  /// **'Plan Name'**
  String get planName;

  /// No description provided for @planDescription.
  ///
  /// In en, this message translates to:
  /// **'Plan Description'**
  String get planDescription;

  /// No description provided for @planPrice.
  ///
  /// In en, this message translates to:
  /// **'Plan Price'**
  String get planPrice;

  /// No description provided for @myBoxes.
  ///
  /// In en, this message translates to:
  /// **'My Boxes'**
  String get myBoxes;

  /// No description provided for @gold.
  ///
  /// In en, this message translates to:
  /// **'Gold'**
  String get gold;

  /// No description provided for @silver.
  ///
  /// In en, this message translates to:
  /// **'Silver'**
  String get silver;

  /// No description provided for @skinCareBox.
  ///
  /// In en, this message translates to:
  /// **'SkinCare Box'**
  String get skinCareBox;

  /// No description provided for @renewalDate.
  ///
  /// In en, this message translates to:
  /// **'Renewal Date'**
  String get renewalDate;

  /// No description provided for @pause.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get pause;

  /// No description provided for @changePlan.
  ///
  /// In en, this message translates to:
  /// **'Change Plan'**
  String get changePlan;

  /// No description provided for @exploreOurBoxes.
  ///
  /// In en, this message translates to:
  /// **'Explore Our Boxes'**
  String get exploreOurBoxes;

  /// No description provided for @babyCare.
  ///
  /// In en, this message translates to:
  /// **'Baby Care'**
  String get babyCare;

  /// No description provided for @startingFrom.
  ///
  /// In en, this message translates to:
  /// **'Starting from'**
  String get startingFrom;

  /// No description provided for @monthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// No description provided for @yearly.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get yearly;

  /// No description provided for @subscribeNow.
  ///
  /// In en, this message translates to:
  /// **'Subscribe Now'**
  String get subscribeNow;

  /// No description provided for @viewPlans.
  ///
  /// In en, this message translates to:
  /// **'View Plans'**
  String get viewPlans;

  /// No description provided for @howItWorks.
  ///
  /// In en, this message translates to:
  /// **'How It Works'**
  String get howItWorks;

  /// No description provided for @chooseYourBox.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Box'**
  String get chooseYourBox;

  /// No description provided for @pickAPlan.
  ///
  /// In en, this message translates to:
  /// **'Pick a Plan'**
  String get pickAPlan;

  /// No description provided for @enjoyMonthlyDelivery.
  ///
  /// In en, this message translates to:
  /// **'Enjoy Monthly Delivery'**
  String get enjoyMonthlyDelivery;

  /// No description provided for @selectWhatMatchesYourIntersets.
  ///
  /// In en, this message translates to:
  /// **'Select what matches\n your interests'**
  String get selectWhatMatchesYourIntersets;

  /// No description provided for @goldSilverOrBronze.
  ///
  /// In en, this message translates to:
  /// **'Gold, Silver or Bronze\n Flexiable to hit your needs'**
  String get goldSilverOrBronze;

  /// No description provided for @yourBoxArrives.
  ///
  /// In en, this message translates to:
  /// **'Your Box Arrives at Your\n Doorstep  Every Month'**
  String get yourBoxArrives;

  /// No description provided for @subscriptionBenefits.
  ///
  /// In en, this message translates to:
  /// **'Subscription Benefits'**
  String get subscriptionBenefits;

  /// No description provided for @enjoyFreeShipping.
  ///
  /// In en, this message translates to:
  /// **'Enjoy free shipping on all subs'**
  String get enjoyFreeShipping;

  /// No description provided for @saveUpTo30.
  ///
  /// In en, this message translates to:
  /// **'Save up to 30% on your first box'**
  String get saveUpTo30;

  /// No description provided for @exclusiveProducts.
  ///
  /// In en, this message translates to:
  /// **'Exclusive products'**
  String get exclusiveProducts;

  /// No description provided for @monthlyDiscounts.
  ///
  /// In en, this message translates to:
  /// **'Monthly discounts'**
  String get monthlyDiscounts;

  /// No description provided for @freeDeliviry.
  ///
  /// In en, this message translates to:
  /// **'Free delivery'**
  String get freeDeliviry;

  /// No description provided for @getAccessToPremium.
  ///
  /// In en, this message translates to:
  /// **'Get access to premium items'**
  String get getAccessToPremium;

  /// No description provided for @flexibleCancelation.
  ///
  /// In en, this message translates to:
  /// **'Flexible cancelation'**
  String get flexibleCancelation;

  /// No description provided for @pauseOrCancelSubscription.
  ///
  /// In en, this message translates to:
  /// **'Pause or cancel your subscription'**
  String get pauseOrCancelSubscription;

  /// No description provided for @pauseSubscription.
  ///
  /// In en, this message translates to:
  /// **'Pause Subscription'**
  String get pauseSubscription;

  /// No description provided for @cancelSubscription.
  ///
  /// In en, this message translates to:
  /// **'Cancel Subscription'**
  String get cancelSubscription;

  /// No description provided for @selectPauseTime.
  ///
  /// In en, this message translates to:
  /// **'Select the Pause Time duration'**
  String get selectPauseTime;

  /// No description provided for @pauseDuration.
  ///
  /// In en, this message translates to:
  /// **'Pause Duration'**
  String get pauseDuration;

  /// No description provided for @bronze.
  ///
  /// In en, this message translates to:
  /// **'Bronze'**
  String get bronze;

  /// No description provided for @deliveryAddress.
  ///
  /// In en, this message translates to:
  /// **'Deliver Address'**
  String get deliveryAddress;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @enterYourCity.
  ///
  /// In en, this message translates to:
  /// **'Enter your city'**
  String get enterYourCity;

  /// No description provided for @neighborhood.
  ///
  /// In en, this message translates to:
  /// **'Neighborhood'**
  String get neighborhood;

  /// No description provided for @enterYourNeighborhood.
  ///
  /// In en, this message translates to:
  /// **'Enter your neighborhood'**
  String get enterYourNeighborhood;

  /// No description provided for @streetAndDetailedAddress.
  ///
  /// In en, this message translates to:
  /// **'Street and Detailed Address'**
  String get streetAndDetailedAddress;

  /// No description provided for @enterStreetAndAddress.
  ///
  /// In en, this message translates to:
  /// **'Enter street and detailed address'**
  String get enterStreetAndAddress;

  /// No description provided for @additionalNotes.
  ///
  /// In en, this message translates to:
  /// **'Additional Notes (Optional)'**
  String get additionalNotes;

  /// No description provided for @anyExtraNotes.
  ///
  /// In en, this message translates to:
  /// **'Any extra notes for delivery'**
  String get anyExtraNotes;

  /// No description provided for @subscriptionDetails.
  ///
  /// In en, this message translates to:
  /// **'Subscription Details'**
  String get subscriptionDetails;

  /// No description provided for @orderSummary.
  ///
  /// In en, this message translates to:
  /// **'Order Summary'**
  String get orderSummary;

  /// No description provided for @boxPrice.
  ///
  /// In en, this message translates to:
  /// **'Box Price'**
  String get boxPrice;

  /// No description provided for @subscriptionPeriod.
  ///
  /// In en, this message translates to:
  /// **'Subscription Period'**
  String get subscriptionPeriod;

  /// No description provided for @deliveryFees.
  ///
  /// In en, this message translates to:
  /// **'Delivery Fees'**
  String get deliveryFees;

  /// No description provided for @completeSubscription.
  ///
  /// In en, this message translates to:
  /// **'Complete Subscription'**
  String get completeSubscription;

  /// No description provided for @contentOfBox.
  ///
  /// In en, this message translates to:
  /// **'Content of the Box'**
  String get contentOfBox;

  /// No description provided for @goldPlanPrice.
  ///
  /// In en, this message translates to:
  /// **'EGP 199/month'**
  String get goldPlanPrice;

  /// No description provided for @silverPlanPrice.
  ///
  /// In en, this message translates to:
  /// **'EGP 179/month'**
  String get silverPlanPrice;

  /// No description provided for @bronzePlanPrice.
  ///
  /// In en, this message translates to:
  /// **'EGP 159/month'**
  String get bronzePlanPrice;

  /// No description provided for @oneMonth.
  ///
  /// In en, this message translates to:
  /// **'1 Month'**
  String get oneMonth;

  /// No description provided for @twoMonth.
  ///
  /// In en, this message translates to:
  /// **'2 month'**
  String get twoMonth;

  /// No description provided for @threeMonth.
  ///
  /// In en, this message translates to:
  /// **'3 month'**
  String get threeMonth;

  /// No description provided for @resumeJuly12.
  ///
  /// In en, this message translates to:
  /// **'Resume on July 12, 2024'**
  String get resumeJuly12;

  /// No description provided for @resumeAug12.
  ///
  /// In en, this message translates to:
  /// **'Resume on Aug 12, 2024'**
  String get resumeAug12;

  /// No description provided for @resumeSep12.
  ///
  /// In en, this message translates to:
  /// **'Resume on Sep 12, 2024'**
  String get resumeSep12;

  /// No description provided for @skinCareBoxTitle.
  ///
  /// In en, this message translates to:
  /// **'Skin Care Box'**
  String get skinCareBoxTitle;

  /// No description provided for @skinCareBoxDescription.
  ///
  /// In en, this message translates to:
  /// **'Enjoy a monthly delivery of curated skincare products tailored to your needs. Each box includes a selection of high-quality items designed to nourish and rejuvenate your skin.'**
  String get skinCareBoxDescription;

  /// No description provided for @subscribingToPlan.
  ///
  /// In en, this message translates to:
  /// **'Subscribing to plan:'**
  String get subscribingToPlan;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @personalInformation.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get personalInformation;

  /// No description provided for @uploadImageDescription.
  ///
  /// In en, this message translates to:
  /// **'You can upload an image in JPEG or PNG format'**
  String get uploadImageDescription;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'E-Mail'**
  String get email;

  /// No description provided for @enterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enterYourEmail;

  /// No description provided for @userAddress.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get userAddress;

  /// No description provided for @enterYourAddress.
  ///
  /// In en, this message translates to:
  /// **'Enter your address'**
  String get enterYourAddress;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @stylishHandbag.
  ///
  /// In en, this message translates to:
  /// **'Stylish Handbag'**
  String get stylishHandbag;

  /// No description provided for @priceEgp450.
  ///
  /// In en, this message translates to:
  /// **'450 EGP'**
  String get priceEgp450;

  /// No description provided for @fiveDaysAgo.
  ///
  /// In en, this message translates to:
  /// **'5 Days Ago'**
  String get fiveDaysAgo;

  /// No description provided for @sarahAlAhmad.
  ///
  /// In en, this message translates to:
  /// **'Sarah Al-Ahmad'**
  String get sarahAlAhmad;

  /// No description provided for @ahmedHassan.
  ///
  /// In en, this message translates to:
  /// **'Ahmed Hassan'**
  String get ahmedHassan;

  /// No description provided for @fatimaAli.
  ///
  /// In en, this message translates to:
  /// **'Fatima Ali'**
  String get fatimaAli;

  /// No description provided for @requestedTwoDaysAgo.
  ///
  /// In en, this message translates to:
  /// **'Requested 2 days ago'**
  String get requestedTwoDaysAgo;

  /// No description provided for @requestedOneDayAgo.
  ///
  /// In en, this message translates to:
  /// **'Requested 1 day ago'**
  String get requestedOneDayAgo;

  /// No description provided for @requestedThreeHoursAgo.
  ///
  /// In en, this message translates to:
  /// **'Requested 3 hours ago'**
  String get requestedThreeHoursAgo;

  /// No description provided for @joinedSixMonthsAgo.
  ///
  /// In en, this message translates to:
  /// **'Joined 6 months ago'**
  String get joinedSixMonthsAgo;

  /// No description provided for @nadineEssam.
  ///
  /// In en, this message translates to:
  /// **'Nadine Essam'**
  String get nadineEssam;

  /// No description provided for @searchForProduct.
  ///
  /// In en, this message translates to:
  /// **'Search for a product'**
  String get searchForProduct;

  /// No description provided for @searchInYourCircles.
  ///
  /// In en, this message translates to:
  /// **'Search in your circles'**
  String get searchInYourCircles;

  /// No description provided for @membersNumber.
  ///
  /// In en, this message translates to:
  /// **'2,345 members'**
  String get membersNumber;

  /// No description provided for @searchForBlogPost.
  ///
  /// In en, this message translates to:
  /// **'Search for blog post'**
  String get searchForBlogPost;

  /// No description provided for @yourRecentlyReadArticles.
  ///
  /// In en, this message translates to:
  /// **'Your Recently Read Articles'**
  String get yourRecentlyReadArticles;

  /// No description provided for @latestArticles.
  ///
  /// In en, this message translates to:
  /// **'Latest Articles'**
  String get latestArticles;

  /// No description provided for @mostRead.
  ///
  /// In en, this message translates to:
  /// **'Most Read'**
  String get mostRead;

  /// No description provided for @parenting.
  ///
  /// In en, this message translates to:
  /// **'Parenting'**
  String get parenting;

  /// No description provided for @beauty.
  ///
  /// In en, this message translates to:
  /// **'Beauty'**
  String get beauty;

  /// No description provided for @health.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get health;

  /// No description provided for @moms.
  ///
  /// In en, this message translates to:
  /// **'Moms'**
  String get moms;

  /// No description provided for @family.
  ///
  /// In en, this message translates to:
  /// **'Family'**
  String get family;

  /// No description provided for @friends.
  ///
  /// In en, this message translates to:
  /// **'Friends'**
  String get friends;

  /// No description provided for @readMore.
  ///
  /// In en, this message translates to:
  /// **'Read More'**
  String get readMore;

  /// No description provided for @skinCareRoutine.
  ///
  /// In en, this message translates to:
  /// **'Skin Care Routine'**
  String get skinCareRoutine;

  /// No description provided for @skinCareTips.
  ///
  /// In en, this message translates to:
  /// **'Tips for maintaining healthy skin and a glowing complexion.'**
  String get skinCareTips;

  /// No description provided for @quickHealthyMeals.
  ///
  /// In en, this message translates to:
  /// **'Quick to Prepare Healthy Meals'**
  String get quickHealthyMeals;

  /// No description provided for @healthyMealsDescription.
  ///
  /// In en, this message translates to:
  /// **'Healthy meals that are quick to prepare for busy moms.'**
  String get healthyMealsDescription;

  /// No description provided for @earlyReadingSkills.
  ///
  /// In en, this message translates to:
  /// **'How to Develop Early Reading Skills in Children'**
  String get earlyReadingSkills;

  /// No description provided for @readingSkillsDescription.
  ///
  /// In en, this message translates to:
  /// **'Read about the importance of early reading skills and how to encourage your child to develop a love for books.'**
  String get readingSkillsDescription;

  /// No description provided for @articleDate.
  ///
  /// In en, this message translates to:
  /// **'July 12, 2023'**
  String get articleDate;

  /// No description provided for @blogDetails.
  ///
  /// In en, this message translates to:
  /// **'Blog Details'**
  String get blogDetails;

  /// No description provided for @developStrongBond.
  ///
  /// In en, this message translates to:
  /// **'How to Develop a Strong Bond with Your Child'**
  String get developStrongBond;

  /// No description provided for @sarahAlHassan.
  ///
  /// In en, this message translates to:
  /// **'Sarah al-Hassan'**
  String get sarahAlHassan;

  /// No description provided for @bondingDescription.
  ///
  /// In en, this message translates to:
  /// **'Read this article to learn effective strategies for building a strong emotional connection with your child, fostering trust, and enhancing communication.'**
  String get bondingDescription;

  /// No description provided for @similarArticles.
  ///
  /// In en, this message translates to:
  /// **'Similar Articles'**
  String get similarArticles;

  /// No description provided for @store.
  ///
  /// In en, this message translates to:
  /// **'Store'**
  String get store;

  /// No description provided for @productDetails.
  ///
  /// In en, this message translates to:
  /// **'Product Details'**
  String get productDetails;

  /// No description provided for @summerCollection.
  ///
  /// In en, this message translates to:
  /// **'Summer Collection'**
  String get summerCollection;

  /// No description provided for @saveUpTo40Off.
  ///
  /// In en, this message translates to:
  /// **'Save up to 40% off'**
  String get saveUpTo40Off;

  /// No description provided for @bestSellers.
  ///
  /// In en, this message translates to:
  /// **'Best Sellers'**
  String get bestSellers;

  /// No description provided for @orderReview.
  ///
  /// In en, this message translates to:
  /// **'Order Review'**
  String get orderReview;

  /// No description provided for @orderStatus.
  ///
  /// In en, this message translates to:
  /// **'Order Status'**
  String get orderStatus;

  /// No description provided for @awaitingConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Awaiting Confirmation'**
  String get awaitingConfirmation;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @confirmation.
  ///
  /// In en, this message translates to:
  /// **'Confirmation'**
  String get confirmation;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get products;

  /// No description provided for @deleteAll.
  ///
  /// In en, this message translates to:
  /// **'Delete All'**
  String get deleteAll;

  /// No description provided for @elegantHandbag.
  ///
  /// In en, this message translates to:
  /// **'Elegant Handbag'**
  String get elegantHandbag;

  /// No description provided for @productDetailsText.
  ///
  /// In en, this message translates to:
  /// **'Color: Red | Size: M | Qty: 1'**
  String get productDetailsText;

  /// No description provided for @productPrice.
  ///
  /// In en, this message translates to:
  /// **'899 EGP'**
  String get productPrice;

  /// No description provided for @tax.
  ///
  /// In en, this message translates to:
  /// **'Tax (15%)'**
  String get tax;

  /// No description provided for @taxAmount.
  ///
  /// In en, this message translates to:
  /// **'298.50 EGP'**
  String get taxAmount;

  /// No description provided for @free.
  ///
  /// In en, this message translates to:
  /// **'free'**
  String get free;

  /// No description provided for @orderTotalAmount.
  ///
  /// In en, this message translates to:
  /// **'1990 EGP'**
  String get orderTotalAmount;

  /// No description provided for @discountCoupon.
  ///
  /// In en, this message translates to:
  /// **'Discount Coupon'**
  String get discountCoupon;

  /// No description provided for @enterCouponCode.
  ///
  /// In en, this message translates to:
  /// **'Enter your coupon code'**
  String get enterCouponCode;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get pay;

  /// No description provided for @orderPayment.
  ///
  /// In en, this message translates to:
  /// **'Order Payment'**
  String get orderPayment;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @homeAddress.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeAddress;

  /// No description provided for @saraSmith.
  ///
  /// In en, this message translates to:
  /// **'Sara Smith'**
  String get saraSmith;

  /// No description provided for @addressDetails.
  ///
  /// In en, this message translates to:
  /// **'123 Main St, Springfield, USA'**
  String get addressDetails;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'010987654321'**
  String get phoneNumber;

  /// No description provided for @defaultAddress.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultAddress;

  /// No description provided for @addNewAddress.
  ///
  /// In en, this message translates to:
  /// **'Add New Address'**
  String get addNewAddress;

  /// No description provided for @district.
  ///
  /// In en, this message translates to:
  /// **'District'**
  String get district;

  /// No description provided for @enterDistrictName.
  ///
  /// In en, this message translates to:
  /// **'Enter District Name'**
  String get enterDistrictName;

  /// No description provided for @streetAndBuilding.
  ///
  /// In en, this message translates to:
  /// **'Street and Building'**
  String get streetAndBuilding;

  /// No description provided for @enterStreetAndBuilding.
  ///
  /// In en, this message translates to:
  /// **'Enter Street and Building Name'**
  String get enterStreetAndBuilding;

  /// No description provided for @paymentAdditionalNotes.
  ///
  /// In en, this message translates to:
  /// **'Additional Notes'**
  String get paymentAdditionalNotes;

  /// No description provided for @enterAdditionalNotes.
  ///
  /// In en, this message translates to:
  /// **'Enter Additional Notes'**
  String get enterAdditionalNotes;

  /// No description provided for @selectCity.
  ///
  /// In en, this message translates to:
  /// **'Select City'**
  String get selectCity;

  /// No description provided for @cairo.
  ///
  /// In en, this message translates to:
  /// **'Cairo'**
  String get cairo;

  /// No description provided for @alexandria.
  ///
  /// In en, this message translates to:
  /// **'Alexandria'**
  String get alexandria;

  /// No description provided for @giza.
  ///
  /// In en, this message translates to:
  /// **'Giza'**
  String get giza;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @myWallet.
  ///
  /// In en, this message translates to:
  /// **'My Wallet'**
  String get myWallet;

  /// No description provided for @walletBalance.
  ///
  /// In en, this message translates to:
  /// **'Wallet Balance: 1990.00 EGP'**
  String get walletBalance;

  /// No description provided for @cashOnDelivery.
  ///
  /// In en, this message translates to:
  /// **'Cash on Delivery'**
  String get cashOnDelivery;

  /// No description provided for @secureTransaction.
  ///
  /// In en, this message translates to:
  /// **'All Transactions are encrypted and 100% secure'**
  String get secureTransaction;

  /// No description provided for @confirmOrder.
  ///
  /// In en, this message translates to:
  /// **'Confirm Order'**
  String get confirmOrder;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @incoming.
  ///
  /// In en, this message translates to:
  /// **'Incoming'**
  String get incoming;

  /// No description provided for @outgoing.
  ///
  /// In en, this message translates to:
  /// **'Outgoing'**
  String get outgoing;

  /// No description provided for @topRatedPhotographers.
  ///
  /// In en, this message translates to:
  /// **'Top Rated Photographers'**
  String get topRatedPhotographers;

  /// No description provided for @topRatedMakeupArtists.
  ///
  /// In en, this message translates to:
  /// **'Top Rated Makeup Artists'**
  String get topRatedMakeupArtists;

  /// No description provided for @topRatedWeddingPlanners.
  ///
  /// In en, this message translates to:
  /// **'Top Rated Wedding Planners'**
  String get topRatedWeddingPlanners;

  /// No description provided for @topRatedVenues.
  ///
  /// In en, this message translates to:
  /// **'Top Rated Venues'**
  String get topRatedVenues;

  /// No description provided for @topRatedCatering.
  ///
  /// In en, this message translates to:
  /// **'Top Rated Catering'**
  String get topRatedCatering;

  /// No description provided for @viewDetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewDetails;

  /// No description provided for @photographers.
  ///
  /// In en, this message translates to:
  /// **'Photographers'**
  String get photographers;

  /// No description provided for @makeupArtists.
  ///
  /// In en, this message translates to:
  /// **'Makeup Artists'**
  String get makeupArtists;

  /// No description provided for @weddingPlanners.
  ///
  /// In en, this message translates to:
  /// **'Wedding Planners'**
  String get weddingPlanners;

  /// No description provided for @venues.
  ///
  /// In en, this message translates to:
  /// **'Venues'**
  String get venues;

  /// No description provided for @catering.
  ///
  /// In en, this message translates to:
  /// **'Catering'**
  String get catering;

  /// No description provided for @searchForService.
  ///
  /// In en, this message translates to:
  /// **'Search For Service'**
  String get searchForService;

  /// No description provided for @chooseServiceToPay.
  ///
  /// In en, this message translates to:
  /// **'Choose The Service you want to pay'**
  String get chooseServiceToPay;

  /// No description provided for @telecomInternetBills.
  ///
  /// In en, this message translates to:
  /// **'Telecom & Internet bills'**
  String get telecomInternetBills;

  /// No description provided for @mobileInternetTopUp.
  ///
  /// In en, this message translates to:
  /// **'Mobile & Internet Top-up'**
  String get mobileInternetTopUp;

  /// No description provided for @electricity.
  ///
  /// In en, this message translates to:
  /// **'Electricity'**
  String get electricity;

  /// No description provided for @gas.
  ///
  /// In en, this message translates to:
  /// **'Gas'**
  String get gas;

  /// No description provided for @waterBills.
  ///
  /// In en, this message translates to:
  /// **'Water bills'**
  String get waterBills;

  /// No description provided for @installmentsServices.
  ///
  /// In en, this message translates to:
  /// **'Installments Services'**
  String get installmentsServices;

  /// No description provided for @recentPayments.
  ///
  /// In en, this message translates to:
  /// **'Recent Payments'**
  String get recentPayments;

  /// No description provided for @chooseYourProvider.
  ///
  /// In en, this message translates to:
  /// **'Choose your Provider'**
  String get chooseYourProvider;

  /// No description provided for @internet.
  ///
  /// In en, this message translates to:
  /// **'Internet'**
  String get internet;

  /// No description provided for @mobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get mobile;

  /// No description provided for @landline.
  ///
  /// In en, this message translates to:
  /// **'Landline'**
  String get landline;

  /// No description provided for @enterPhoneNumberLandline.
  ///
  /// In en, this message translates to:
  /// **'Enter Phone Number/Landline'**
  String get enterPhoneNumberLandline;

  /// No description provided for @billAmount.
  ///
  /// In en, this message translates to:
  /// **'Bill Amount'**
  String get billAmount;

  /// No description provided for @dueDate.
  ///
  /// In en, this message translates to:
  /// **'Due Date'**
  String get dueDate;

  /// No description provided for @invoiceNumber.
  ///
  /// In en, this message translates to:
  /// **'Invoice Number'**
  String get invoiceNumber;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @payNow.
  ///
  /// In en, this message translates to:
  /// **'Pay Now'**
  String get payNow;

  /// No description provided for @rechargeAmount.
  ///
  /// In en, this message translates to:
  /// **'Recharge Amount'**
  String get rechargeAmount;

  /// No description provided for @amountToBePaid.
  ///
  /// In en, this message translates to:
  /// **'Amount to be paid'**
  String get amountToBePaid;

  /// No description provided for @vodafone.
  ///
  /// In en, this message translates to:
  /// **'Vodafone'**
  String get vodafone;

  /// No description provided for @egp.
  ///
  /// In en, this message translates to:
  /// **'EGP'**
  String get egp;

  /// No description provided for @successfulPayment.
  ///
  /// In en, this message translates to:
  /// **'Payment Successful!'**
  String get successfulPayment;

  /// No description provided for @paymentCompletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Your payment has been completed successfully.'**
  String get paymentCompletedSuccessfully;

  /// No description provided for @transactionReference.
  ///
  /// In en, this message translates to:
  /// **'Transaction Reference'**
  String get transactionReference;

  /// No description provided for @backToServices.
  ///
  /// In en, this message translates to:
  /// **'Back to Services'**
  String get backToServices;

  /// No description provided for @clothing.
  ///
  /// In en, this message translates to:
  /// **'Clothing'**
  String get clothing;

  /// No description provided for @accessories.
  ///
  /// In en, this message translates to:
  /// **'Accessories'**
  String get accessories;

  /// No description provided for @shoes.
  ///
  /// In en, this message translates to:
  /// **'Shoes'**
  String get shoes;

  /// No description provided for @skirts.
  ///
  /// In en, this message translates to:
  /// **'Skirts'**
  String get skirts;

  /// No description provided for @productsCount.
  ///
  /// In en, this message translates to:
  /// **'256 Products'**
  String get productsCount;

  /// No description provided for @sortByLatest.
  ///
  /// In en, this message translates to:
  /// **'Sort by: Latest'**
  String get sortByLatest;

  /// No description provided for @healthCategory.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get healthCategory;

  /// No description provided for @educationCategory.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get educationCategory;

  /// No description provided for @financeCategory.
  ///
  /// In en, this message translates to:
  /// **'Finance'**
  String get financeCategory;

  /// No description provided for @lifestyleCategory.
  ///
  /// In en, this message translates to:
  /// **'Lifestyle'**
  String get lifestyleCategory;

  /// No description provided for @onboardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Purse... Your way.'**
  String get onboardingTitle1;

  /// No description provided for @onboardingDescription1.
  ///
  /// In en, this message translates to:
  /// **'Everything you need to manage your money easily and safely... In a sleek app designed specifically to take care of your details.'**
  String get onboardingDescription1;

  /// No description provided for @onboardingTitle2.
  ///
  /// In en, this message translates to:
  /// **' All your services in one place'**
  String get onboardingTitle2;

  /// No description provided for @onboardingDescription2.
  ///
  /// In en, this message translates to:
  /// **'Pay your bills, shop for yourself and your children\'s needs, and choose monthly boxes that suit your taste.'**
  String get onboardingDescription2;

  /// No description provided for @onboardingTitle3.
  ///
  /// In en, this message translates to:
  /// **'Find your circle'**
  String get onboardingTitle3;

  /// No description provided for @onboardingDescription3.
  ///
  /// In en, this message translates to:
  /// **'Join women like you, share your story, and feel truly supported'**
  String get onboardingDescription3;

  /// No description provided for @animalsCircle.
  ///
  /// In en, this message translates to:
  /// **'Animals'**
  String get animalsCircle;

  /// No description provided for @ownerRole.
  ///
  /// In en, this message translates to:
  /// **'Owner'**
  String get ownerRole;

  /// No description provided for @janeDoe.
  ///
  /// In en, this message translates to:
  /// **'Jane Doe'**
  String get janeDoe;

  /// No description provided for @twoHoursAgo.
  ///
  /// In en, this message translates to:
  /// **'2 hours ago'**
  String get twoHoursAgo;

  /// No description provided for @puppyPostContent.
  ///
  /// In en, this message translates to:
  /// **'Hi everyone! I just adopted a new puppy and I\'m so excited to share this with you all. He\'s a little ball of energy and love!'**
  String get puppyPostContent;

  /// No description provided for @myOrders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get myOrders;

  /// No description provided for @inProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get inProgress;

  /// No description provided for @delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @orderDate.
  ///
  /// In en, this message translates to:
  /// **'June 10, 2025'**
  String get orderDate;

  /// No description provided for @orderNumber.
  ///
  /// In en, this message translates to:
  /// **'#ORD-12785'**
  String get orderNumber;

  /// No description provided for @totalLabel.
  ///
  /// In en, this message translates to:
  /// **'Total:'**
  String get totalLabel;

  /// No description provided for @orderAmount.
  ///
  /// In en, this message translates to:
  /// **'EGP 450'**
  String get orderAmount;

  /// No description provided for @orderConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Order Confirmation'**
  String get orderConfirmation;

  /// No description provided for @orderDetails.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get orderDetails;

  /// No description provided for @luxuryHandbag.
  ///
  /// In en, this message translates to:
  /// **'Luxury Handbag'**
  String get luxuryHandbag;

  /// No description provided for @colorWhite.
  ///
  /// In en, this message translates to:
  /// **'white'**
  String get colorWhite;

  /// No description provided for @price299.
  ///
  /// In en, this message translates to:
  /// **'299 EGP'**
  String get price299;

  /// No description provided for @quantityOne.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get quantityOne;

  /// No description provided for @totalPrice300.
  ///
  /// In en, this message translates to:
  /// **'EGP 300'**
  String get totalPrice300;

  /// No description provided for @orderDate2.
  ///
  /// In en, this message translates to:
  /// **'June 15, 2023'**
  String get orderDate2;

  /// No description provided for @orderNumber2.
  ///
  /// In en, this message translates to:
  /// **'#ORD-123456'**
  String get orderNumber2;

  /// No description provided for @addressExample.
  ///
  /// In en, this message translates to:
  /// **'123 Main St, City, Country'**
  String get addressExample;

  /// No description provided for @phoneExample.
  ///
  /// In en, this message translates to:
  /// **'+20 123 456 7890'**
  String get phoneExample;

  /// No description provided for @subtotalAmount.
  ///
  /// In en, this message translates to:
  /// **'450 EGP'**
  String get subtotalAmount;

  /// No description provided for @shippingFeeAmount.
  ///
  /// In en, this message translates to:
  /// **'20 EGP'**
  String get shippingFeeAmount;

  /// No description provided for @vatAmount.
  ///
  /// In en, this message translates to:
  /// **'20 EGP'**
  String get vatAmount;

  /// No description provided for @totalAmountExample.
  ///
  /// In en, this message translates to:
  /// **'490 EGP'**
  String get totalAmountExample;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @confirmed.
  ///
  /// In en, this message translates to:
  /// **'Confirmed'**
  String get confirmed;

  /// No description provided for @parentingTips.
  ///
  /// In en, this message translates to:
  /// **'Parenting Tips'**
  String get parentingTips;

  /// No description provided for @buildingTrustAndCommunication.
  ///
  /// In en, this message translates to:
  /// **'Building Trust and Communication'**
  String get buildingTrustAndCommunication;

  /// No description provided for @effectiveParentingDescription.
  ///
  /// In en, this message translates to:
  /// **'Effective parenting involves creating an environment where children feel safe to express themselves. This includes active listening, showing empathy, and maintaining consistent boundaries.'**
  String get effectiveParentingDescription;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsAndConditions;

  /// No description provided for @introduction.
  ///
  /// In en, this message translates to:
  /// **'1. Introduction'**
  String get introduction;

  /// No description provided for @introductionContent.
  ///
  /// In en, this message translates to:
  /// **'These terms and conditions govern your use of our application. By using our app, you agree to comply with and be bound by these terms.'**
  String get introductionContent;

  /// No description provided for @userObligations.
  ///
  /// In en, this message translates to:
  /// **'2. User Obligations'**
  String get userObligations;

  /// No description provided for @userObligationsContent.
  ///
  /// In en, this message translates to:
  /// **'You agree to use the application in compliance with all applicable laws and regulations. You are responsible for maintaining the confidentiality of your account information.'**
  String get userObligationsContent;

  /// No description provided for @limitationOfLiability.
  ///
  /// In en, this message translates to:
  /// **'3. Limitation of Liability'**
  String get limitationOfLiability;

  /// No description provided for @limitationOfLiabilityContent.
  ///
  /// In en, this message translates to:
  /// **'Our liability is limited to the maximum extent permitted by law. We shall not be liable for any indirect, incidental, or consequential damages.'**
  String get limitationOfLiabilityContent;

  /// No description provided for @modifications.
  ///
  /// In en, this message translates to:
  /// **'4. Modifications'**
  String get modifications;

  /// No description provided for @modificationsContent.
  ///
  /// In en, this message translates to:
  /// **'We reserve the right to modify these terms at any time. Changes will be effective immediately upon posting in the application.'**
  String get modificationsContent;

  /// No description provided for @termination.
  ///
  /// In en, this message translates to:
  /// **'5. Termination'**
  String get termination;

  /// No description provided for @terminationContent.
  ///
  /// In en, this message translates to:
  /// **'We may terminate or suspend your access to the application at any time, with or without cause, and with or without notice.'**
  String get terminationContent;

  /// No description provided for @mentorship.
  ///
  /// In en, this message translates to:
  /// **'Mentorship'**
  String get mentorship;

  /// No description provided for @event.
  ///
  /// In en, this message translates to:
  /// **'Event'**
  String get event;

  /// No description provided for @workshops.
  ///
  /// In en, this message translates to:
  /// **'Workshops'**
  String get workshops;

  /// No description provided for @resources.
  ///
  /// In en, this message translates to:
  /// **'Resources'**
  String get resources;

  /// No description provided for @finding.
  ///
  /// In en, this message translates to:
  /// **'Finding'**
  String get finding;

  /// No description provided for @topRatedCoaches.
  ///
  /// In en, this message translates to:
  /// **'Top Rated Coaches'**
  String get topRatedCoaches;

  /// No description provided for @bookASession.
  ///
  /// In en, this message translates to:
  /// **'Book A Session'**
  String get bookASession;

  /// No description provided for @postProduct.
  ///
  /// In en, this message translates to:
  /// **'Post Product'**
  String get postProduct;

  /// No description provided for @addNewProduct.
  ///
  /// In en, this message translates to:
  /// **'Add New Product'**
  String get addNewProduct;

  /// No description provided for @mySubscriptions.
  ///
  /// In en, this message translates to:
  /// **'My Subscriptions'**
  String get mySubscriptions;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @privacyIntroduction.
  ///
  /// In en, this message translates to:
  /// **'1. Introduction'**
  String get privacyIntroduction;

  /// No description provided for @privacyIntroductionContent.
  ///
  /// In en, this message translates to:
  /// **'This privacy policy outlines how we handle your personal information when you use our application. We are committed to protecting your privacy and ensuring the security of your data.'**
  String get privacyIntroductionContent;

  /// No description provided for @informationCollection.
  ///
  /// In en, this message translates to:
  /// **'2. Information Collection'**
  String get informationCollection;

  /// No description provided for @informationCollectionContent.
  ///
  /// In en, this message translates to:
  /// **'We may collect personal information from you when you use our application, including but not limited to your name, email address, and usage data. This information is collected only with your consent.'**
  String get informationCollectionContent;

  /// No description provided for @informationUse.
  ///
  /// In en, this message translates to:
  /// **'3. Information Use'**
  String get informationUse;

  /// No description provided for @informationUseContent.
  ///
  /// In en, this message translates to:
  /// **'We use your information to provide and improve our services, communicate with you, and ensure the security of our application. Your data will never be sold to third parties.'**
  String get informationUseContent;

  /// No description provided for @dataSecurity.
  ///
  /// In en, this message translates to:
  /// **'4. Data Security'**
  String get dataSecurity;

  /// No description provided for @dataSecurityContent.
  ///
  /// In en, this message translates to:
  /// **'We implement appropriate security measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction.'**
  String get dataSecurityContent;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'5. Contact Us'**
  String get contactUs;

  /// No description provided for @contactUsContent.
  ///
  /// In en, this message translates to:
  /// **'If you have any questions about this Privacy Policy, please contact us through the app or our official support channels.'**
  String get contactUsContent;

  /// No description provided for @shippingInformation.
  ///
  /// In en, this message translates to:
  /// **'Shipping Information'**
  String get shippingInformation;

  /// No description provided for @nameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameLabel;

  /// No description provided for @productName.
  ///
  /// In en, this message translates to:
  /// **'Product Name'**
  String get productName;

  /// No description provided for @enterProductName.
  ///
  /// In en, this message translates to:
  /// **'Enter product name'**
  String get enterProductName;

  /// No description provided for @productDescription.
  ///
  /// In en, this message translates to:
  /// **'Product Description'**
  String get productDescription;

  /// No description provided for @describeYourProduct.
  ///
  /// In en, this message translates to:
  /// **'Describe your product'**
  String get describeYourProduct;

  /// No description provided for @enterThePrice.
  ///
  /// In en, this message translates to:
  /// **'Enter the price'**
  String get enterThePrice;

  /// No description provided for @productImage.
  ///
  /// In en, this message translates to:
  /// **'Product Image'**
  String get productImage;

  /// No description provided for @bags.
  ///
  /// In en, this message translates to:
  /// **'Bags'**
  String get bags;

  /// No description provided for @jewelry.
  ///
  /// In en, this message translates to:
  /// **'Jewelry'**
  String get jewelry;

  /// No description provided for @electronics.
  ///
  /// In en, this message translates to:
  /// **'Electronics'**
  String get electronics;

  /// No description provided for @homeDecor.
  ///
  /// In en, this message translates to:
  /// **'Home Decor'**
  String get homeDecor;

  /// No description provided for @frequentlyAskedQuestions.
  ///
  /// In en, this message translates to:
  /// **'Frequently Asked Questions'**
  String get frequentlyAskedQuestions;

  /// No description provided for @transportation.
  ///
  /// In en, this message translates to:
  /// **'Transportation'**
  String get transportation;

  /// No description provided for @foodDelivery.
  ///
  /// In en, this message translates to:
  /// **'Woman Food Delivery'**
  String get foodDelivery;

  /// No description provided for @rideHailing.
  ///
  /// In en, this message translates to:
  /// **'Woman Ride Hailing'**
  String get rideHailing;

  /// No description provided for @transportationServices.
  ///
  /// In en, this message translates to:
  /// **'Transportation Services'**
  String get transportationServices;

  /// No description provided for @rideHailingTransportOptions.
  ///
  /// In en, this message translates to:
  /// **'Quick and reliable transportation options'**
  String get rideHailingTransportOptions;

  /// No description provided for @bookYourRide.
  ///
  /// In en, this message translates to:
  /// **'Book Your Ride'**
  String get bookYourRide;

  /// No description provided for @walletAndPayments.
  ///
  /// In en, this message translates to:
  /// **'Wallet & Payments'**
  String get walletAndPayments;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @walletAndPaymentsMenu.
  ///
  /// In en, this message translates to:
  /// **'Wallet and Payments'**
  String get walletAndPaymentsMenu;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'language'**
  String get language;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @helpAndSupport.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get helpAndSupport;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get logOut;

  /// No description provided for @enterCurrentPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter current password'**
  String get enterCurrentPassword;

  /// No description provided for @enterNewPasswordDialog.
  ///
  /// In en, this message translates to:
  /// **'Enter new password'**
  String get enterNewPasswordDialog;

  /// No description provided for @confirmNewPasswordDialog.
  ///
  /// In en, this message translates to:
  /// **'Confirm new password'**
  String get confirmNewPasswordDialog;

  /// No description provided for @vodafoneHomeInternet.
  ///
  /// In en, this message translates to:
  /// **'Vodafone - Home Internet'**
  String get vodafoneHomeInternet;

  /// No description provided for @waterBillMonthly.
  ///
  /// In en, this message translates to:
  /// **'Water Bill - Monthly'**
  String get waterBillMonthly;

  /// No description provided for @electricityBill.
  ///
  /// In en, this message translates to:
  /// **'Electricity Bill'**
  String get electricityBill;

  /// No description provided for @pleaseSelectProvider.
  ///
  /// In en, this message translates to:
  /// **'Please select a provider to continue'**
  String get pleaseSelectProvider;

  /// No description provided for @orange.
  ///
  /// In en, this message translates to:
  /// **'Orange'**
  String get orange;

  /// No description provided for @etisalat.
  ///
  /// In en, this message translates to:
  /// **'Etisalat'**
  String get etisalat;

  /// No description provided for @we.
  ///
  /// In en, this message translates to:
  /// **'WE'**
  String get we;

  /// No description provided for @enterAccountNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter Account Number'**
  String get enterAccountNumber;

  /// No description provided for @selectInstallmentType.
  ///
  /// In en, this message translates to:
  /// **'Select Installment Type'**
  String get selectInstallmentType;

  /// No description provided for @selectArea.
  ///
  /// In en, this message translates to:
  /// **'Select Area'**
  String get selectArea;

  /// No description provided for @bookingSessionWith.
  ///
  /// In en, this message translates to:
  /// **'Booking session with'**
  String get bookingSessionWith;

  /// No description provided for @coachSpecialty.
  ///
  /// In en, this message translates to:
  /// **'Specialist in women empowerment and\nleadership development'**
  String get coachSpecialty;

  /// No description provided for @sessionPrice.
  ///
  /// In en, this message translates to:
  /// **'EGP 300/Session'**
  String get sessionPrice;

  /// No description provided for @myHusbandsBirthday.
  ///
  /// In en, this message translates to:
  /// **'My Husband\'s Birthday'**
  String get myHusbandsBirthday;

  /// No description provided for @mothersDay.
  ///
  /// In en, this message translates to:
  /// **'Mother\'s day'**
  String get mothersDay;

  /// No description provided for @currentLanguage.
  ///
  /// In en, this message translates to:
  /// **'En'**
  String get currentLanguage;

  /// No description provided for @reminder.
  ///
  /// In en, this message translates to:
  /// **'Reminder'**
  String get reminder;

  /// No description provided for @reminderDescription.
  ///
  /// In en, this message translates to:
  /// **'gym/gas due date'**
  String get reminderDescription;

  /// No description provided for @confirmCancellation.
  ///
  /// In en, this message translates to:
  /// **'Confirm Cancellation'**
  String get confirmCancellation;

  /// No description provided for @areYouSureCancelSubscription.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to cancel your subscription? This will result in the following:'**
  String get areYouSureCancelSubscription;

  /// No description provided for @cancelingAccumulatedPoints.
  ///
  /// In en, this message translates to:
  /// **'Canceling all accumulated points.'**
  String get cancelingAccumulatedPoints;

  /// No description provided for @losingExclusiveAccess.
  ///
  /// In en, this message translates to:
  /// **'Losing exclusive access to premium features.'**
  String get losingExclusiveAccess;

  /// No description provided for @subscriptionCanceledImmediately.
  ///
  /// In en, this message translates to:
  /// **'Your subscription will be canceled immediately.'**
  String get subscriptionCanceledImmediately;

  /// No description provided for @selectPreferredPauseDuration.
  ///
  /// In en, this message translates to:
  /// **'Select the preferred pause duration'**
  String get selectPreferredPauseDuration;

  /// No description provided for @threeMonths.
  ///
  /// In en, this message translates to:
  /// **'3 Months'**
  String get threeMonths;

  /// No description provided for @sixMonths.
  ///
  /// In en, this message translates to:
  /// **'6 Months'**
  String get sixMonths;

  /// No description provided for @thirtyDays.
  ///
  /// In en, this message translates to:
  /// **'30 days'**
  String get thirtyDays;

  /// No description provided for @ninetyDays.
  ///
  /// In en, this message translates to:
  /// **'90 days'**
  String get ninetyDays;

  /// No description provided for @oneHundredEightyDays.
  ///
  /// In en, this message translates to:
  /// **'180 days'**
  String get oneHundredEightyDays;

  /// No description provided for @importantNotes.
  ///
  /// In en, this message translates to:
  /// **'Important Notes'**
  String get importantNotes;

  /// No description provided for @subscriptionPausedForDuration.
  ///
  /// In en, this message translates to:
  /// **'- Your subscription will be paused for the selected duration.'**
  String get subscriptionPausedForDuration;

  /// No description provided for @resumeSubscriptionAnytime.
  ///
  /// In en, this message translates to:
  /// **'- You can resume your subscription at any time.'**
  String get resumeSubscriptionAnytime;

  /// No description provided for @confirmPause.
  ///
  /// In en, this message translates to:
  /// **'Confirm Pause'**
  String get confirmPause;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'skip'**
  String get skip;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @customerReviews.
  ///
  /// In en, this message translates to:
  /// **'Customer Reviews'**
  String get customerReviews;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Add to Cart'**
  String get addToCart;

  /// No description provided for @trackOrder.
  ///
  /// In en, this message translates to:
  /// **'Track Order'**
  String get trackOrder;

  /// No description provided for @orderPlaced.
  ///
  /// In en, this message translates to:
  /// **'Your Order has been placed successfully'**
  String get orderPlaced;

  /// No description provided for @orderProcessing.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your purchase. Your order is being processed and will be shipped soon.'**
  String get orderProcessing;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @sendMoney.
  ///
  /// In en, this message translates to:
  /// **'Send Money'**
  String get sendMoney;

  /// No description provided for @payYourOrder.
  ///
  /// In en, this message translates to:
  /// **'Pay your orders'**
  String get payYourOrder;

  /// No description provided for @remaining.
  ///
  /// In en, this message translates to:
  /// **'remaining out of'**
  String get remaining;

  /// No description provided for @currentPassword.
  ///
  /// In en, this message translates to:
  /// **'Current Password'**
  String get currentPassword;

  /// No description provided for @confirmNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm New Password'**
  String get confirmNewPassword;

  /// No description provided for @passwordValidation.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters long'**
  String get passwordValidation;

  /// No description provided for @logoutConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logOut?'**
  String get logoutConfirmation;

  /// No description provided for @welcomeUser.
  ///
  /// In en, this message translates to:
  /// **'Hello Sarah!'**
  String get welcomeUser;

  /// No description provided for @currentDate.
  ///
  /// In en, this message translates to:
  /// **'Sunday, June 1, 2025'**
  String get currentDate;

  /// No description provided for @kidsClothing.
  ///
  /// In en, this message translates to:
  /// **'Kids Clothing'**
  String get kidsClothing;

  /// No description provided for @misrPharmacy.
  ///
  /// In en, this message translates to:
  /// **'Misr Pharmacy'**
  String get misrPharmacy;

  /// No description provided for @babyEssentials.
  ///
  /// In en, this message translates to:
  /// **'baby essentials'**
  String get babyEssentials;

  /// No description provided for @howToDevelopEarlyReadingSkills.
  ///
  /// In en, this message translates to:
  /// **'How to Develop Early Reading Skills in Children'**
  String get howToDevelopEarlyReadingSkills;

  /// No description provided for @readAboutImportanceOfEarlyReading.
  ///
  /// In en, this message translates to:
  /// **'Read about the importance of early reading skills and how to encourage your child to develop a love for books.'**
  String get readAboutImportanceOfEarlyReading;

  /// No description provided for @fastFoodDelivery.
  ///
  /// In en, this message translates to:
  /// **'Fast food delivery'**
  String get fastFoodDelivery;

  /// No description provided for @orderNow.
  ///
  /// In en, this message translates to:
  /// **'Order Now'**
  String get orderNow;

  /// No description provided for @bookNow.
  ///
  /// In en, this message translates to:
  /// **'Book Now'**
  String get bookNow;

  /// No description provided for @beautyServices.
  ///
  /// In en, this message translates to:
  /// **'Fancy Beauty Services'**
  String get beautyServices;

  /// No description provided for @bookingConfirmedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Booking Confirmed Successfully'**
  String get bookingConfirmedSuccessfully;

  /// No description provided for @kidsStore.
  ///
  /// In en, this message translates to:
  /// **'Kids Store'**
  String get kidsStore;

  /// No description provided for @addedToCart.
  ///
  /// In en, this message translates to:
  /// **'Added To Cart'**
  String get addedToCart;

  /// No description provided for @continueShopping.
  ///
  /// In en, this message translates to:
  /// **'Continue Shopping'**
  String get continueShopping;

  /// No description provided for @goToCart.
  ///
  /// In en, this message translates to:
  /// **'Go To Cart'**
  String get goToCart;

  /// No description provided for @addedToFavorites.
  ///
  /// In en, this message translates to:
  /// **'Added To Favourites'**
  String get addedToFavorites;

  /// No description provided for @topRatedCaterers.
  ///
  /// In en, this message translates to:
  /// **'Top Rated Caterers'**
  String get topRatedCaterers;

  /// No description provided for @memberRole.
  ///
  /// In en, this message translates to:
  /// **'member'**
  String get memberRole;

  /// No description provided for @stores.
  ///
  /// In en, this message translates to:
  /// **'Stores'**
  String get stores;

  /// No description provided for @dresses.
  ///
  /// In en, this message translates to:
  /// **'Dresses'**
  String get dresses;

  /// No description provided for @topRatedVendors.
  ///
  /// In en, this message translates to:
  /// **'Top Rated Vendors'**
  String get topRatedVendors;

  /// No description provided for @gym.
  ///
  /// In en, this message translates to:
  /// **'Gym'**
  String get gym;

  /// No description provided for @marketplace.
  ///
  /// In en, this message translates to:
  /// **'Market Place'**
  String get marketplace;

  /// No description provided for @confirmPayment.
  ///
  /// In en, this message translates to:
  /// **'Confirm Payment'**
  String get confirmPayment;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
