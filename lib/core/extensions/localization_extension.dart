import 'package:flutter/material.dart';
import 'package:her_wallet/l10n/app_localizations.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this)!;

  // Convenience methods for common localization tasks
  bool get isArabic => Localizations.localeOf(this).languageCode == 'ar';
  bool get isEnglish => Localizations.localeOf(this).languageCode == 'en';

  String get currentLanguageCode => Localizations.localeOf(this).languageCode;

  TextDirection get textDirection =>
      isArabic ? TextDirection.rtl : TextDirection.ltr;

  String get appName => localizations.appName;
  String get welcome => localizations.welcome;
  String get login => localizations.login;
  String get signup => localizations.signup;
  String get phone => localizations.phone;
  String get fullName => localizations.fullName;
  String get enterYourName => localizations.enterYourName;
  String get enterNumber => localizations.enterNumber;
  String get loginIntoAccount => localizations.loginIntoAccount;
  String get createAnAccount => localizations.createAnAccount;
  String get startYourJourney => localizations.startYourJourney;
  String get joinApp => localizations.joinApp;
  String get agreeTerms => localizations.agreeTerms;
  String get password => localizations.password;
  String get enterPassword => localizations.enterPassword;
  String get forgotPassword => localizations.forgotPassword;
  String get forgotYourPassword => localizations.forgotYourPassword;
  String get passwordInstructions => localizations.passwordInstructions;
  String get forgotPasswordLine => localizations.forgotPasswordLine;
  String get newPassword => localizations.newPassword;
  String get confirmPassword => localizations.confirmPassword;
  String get enterNewPassword => localizations.enterNewPassword;
  String get enterConfirmPassword => localizations.enterConfirmPassword;
  String get newPasswordLine => localizations.newPasswordLine;
  String get enterVerificationCode => localizations.enterVerificationCode;
  String get verificationCodeLine => localizations.verificationCodeLine;
  String get rememberMe => localizations.rememberMe;
  String get save => localizations.save;
  String get confirm => localizations.confirm;
  String get resetPasswordSuccesfully => localizations.resetPasswordSuccesfully;
  String get resetSuccessLine => localizations.resetSuccessLine;
  String get confirmYourCode => localizations.confirmYourCode;
  String get rememberYourPassword => localizations.rememberYourPassword;
  String get didnotReciveCode => localizations.didnotReciveCode;
  String get resendCode => localizations.resendCode;
  String get send => localizations.send;
  String get dontHaveAccount => localizations.dontHaveAccount;
  String get alreadyHaveAccount => localizations.alreadyHaveAccount;
  String get welcomeBack => localizations.welcomeBack;
  String get loginToAccess => localizations.loginToAccess;
  String get home => localizations.home;
  String get profile => localizations.profile;
  String get settings => localizations.settings;
  String get logout => localizations.logout;
  String get balance => localizations.balance;
  String get savingGoals => localizations.savingGoals;
  String get viewAll => localizations.viewAll;
  String get quickAccess => localizations.quickAccess;
  String get brideZone => localizations.brideZone;
  String get babyhub => localizations.babyhub;
  String get womensBazar => localizations.womensBazar;
  String get herSouq => localizations.herSouq;
  String get womenEmpowerment => localizations.womenEmpowerment;
  String get subscribtionBox => localizations.subscribtionBox;
  String get blog => localizations.blog;
  String get circles => localizations.circles;
  String get myCircle => localizations.myCircle;
  String get createNewCircle => localizations.createNewCircle;
  String get skinCare => localizations.skinCare;
  String get childCare => localizations.childCare;
  String get fashion => localizations.fashion;
  String get kitchen => localizations.kitchen;
  String get discoverMore => localizations.discoverMore;
  String get joinNow => localizations.joinNow;
  String get circleName => localizations.circleName;
  String get chooseANameForYourCircle => localizations.chooseANameForYourCircle;
  String get circleDescription => localizations.circleDescription;
  String get describeYourCircle => localizations.describeYourCircle;
  String get category => localizations.category;
  String get selectCategory => localizations.selectCategory;
  String get coverImage => localizations.coverImage;
  String get chooseImageFromGallery => localizations.chooseImageFromGallery;
  String get selectImage => localizations.selectImage;
  String get circlePrivacy => localizations.circlePrivacy;
  String get public => localizations.public;
  String get private => localizations.private;
  String get circlePublicDescription => localizations.circlePublicDescription;
  String get circlePrivatePrivateDescription =>
      localizations.circlePrivatePrivateDescription;
  String get myPosts => localizations.myPosts;
  String get forHerServices => localizations.forHerServices;
  String get paymentServices => localizations.paymentServices;
  String get recentTransactions => localizations.recentTransactions;
  String get more => localizations.more;
  String get bazzar => localizations.bazzar;
  String get circle => localizations.circle;
  String get subscriptions => localizations.subscriptions;
  String get language => localizations.language;
  String get notifications => localizations.notifications;
  String get changePassword => localizations.changePassword;
  String get support => localizations.support;
  String get helpAndSupport => localizations.helpAndSupport;
  String get logOut => localizations.logOut;
  String get enterCurrentPassword => localizations.enterCurrentPassword;
  String get enterNewPasswordDialog => localizations.enterNewPasswordDialog;
  String get confirmNewPasswordDialog => localizations.confirmNewPasswordDialog;
  String get arabic => localizations.arabic;
  String get english => localizations.english;

  // Additional missing keys that exist in ARB files
  String get addNewGoal => localizations.addNewGoal;
  String get goalName => localizations.goalName;
  String get enterGoalName => localizations.enterGoalName;
  String get totalAmount => localizations.totalAmount;
  String get enterTotalAmount => localizations.enterTotalAmount;
  String get dailyTarget => localizations.dailyTarget;
  String get enterDailyTarget => localizations.enterDailyTarget;
  String get goalDate => localizations.goalDate;
  String get goalDatePlaceholder => localizations.goalDatePlaceholder;
  String get saveGoal => localizations.saveGoal;
  String get cancel => localizations.cancel;

  // Top-up and payment related
  String get topUpYourBalance => localizations.topUpYourBalance;
  String get chooseTopUpMethod => localizations.chooseTopUpMethod;
  String get howMuchTopUp => localizations.howMuchTopUp;
  String get enterAmount => localizations.enterAmount;
  String get quickAmounts => localizations.quickAmounts;
  String get topUpNow => localizations.topUpNow;
  String get paymentSecure => localizations.paymentSecure;
  String get recentTopUps => localizations.recentTopUps;
  String get toppedUpViaBankCard => localizations.toppedUpViaBankCard;
  String get toppedUpViaBankAccount => localizations.toppedUpViaBankAccount;
  String get toppedUpViaWallet => localizations.toppedUpViaWallet;
  String get topUpConfirmation => localizations.topUpConfirmation;
  String get transactionDetails => localizations.transactionDetails;
  String get amountToTopUp => localizations.amountToTopUp;
  String get paymentMethod => localizations.paymentMethod;
  String get serviceFee => localizations.serviceFee;
  String get total => localizations.total;
  String get bankCard => localizations.bankCard;
  String get bankAccount => localizations.bankAccount;
  String get cardDetails => localizations.cardDetails;
  String get cardNumber => localizations.cardNumber;
  String get xxxxForCards => localizations.xxxxForCards;
  String get expiryDate => localizations.expiryDate;
  String get securityCodeCVV => localizations.securityCodeCVV;
  String get mmYY => localizations.mmYY;
  String get cvv => localizations.cvv;
  String get cardholderName => localizations.cardholderName;
  String get enterCardholderName => localizations.enterCardholderName;
  String get saveCardForFuture => localizations.saveCardForFuture;
  String get secureTransactions => localizations.secureTransactions;
  String get advancedEncryption => localizations.advancedEncryption;
  String get topUpSuccessful => localizations.topUpSuccessful;
  String get topUpSuccessMessage => localizations.topUpSuccessMessage;
  String get transactionId => localizations.transactionId;
  String get backToHome => localizations.backToHome;

  // Transaction and filter related
  String get searchInYourTransactions => localizations.searchInYourTransactions;
  String get transactionList => localizations.transactionList;
  String get filterTransactions => localizations.filterTransactions;
  String get dateRange => localizations.dateRange;
  String get transactionsType => localizations.transactionsType;
  String get allTransactions => localizations.allTransactions;
  String get incomeTransactions => localizations.incomeTransactions;
  String get outcomingTransactions => localizations.outcomingTransactions;
  String get noTransactionsFound => localizations.noTransactionsFound;
  String get apply => localizations.apply;
  String get reset => localizations.reset;
  String get defaultHintDate => localizations.defaultHintDate;
  String get from => localizations.from;
  String get to => localizations.to;

  // Subscription related
  String get subscriptionPlans => localizations.subscriptionPlans;
  String get subscriptionBoxes => localizations.subscriptionBoxes;
  String get planName => localizations.planName;
  String get planDescription => localizations.planDescription;
  String get planPrice => localizations.planPrice;
  String get myBoxes => localizations.myBoxes;
  String get gold => localizations.gold;
  String get silver => localizations.silver;
  String get bronze => localizations.bronze;
  String get skinCareBox => localizations.skinCareBox;
  String get renewalDate => localizations.renewalDate;
  String get pause => localizations.pause;
  String get changePlan => localizations.changePlan;
  String get exploreOurBoxes => localizations.exploreOurBoxes;
  String get babyCare => localizations.babyCare;
  String get startingFrom => localizations.startingFrom;
  String get monthly => localizations.monthly;
  String get yearly => localizations.yearly;
  String get subscribeNow => localizations.subscribeNow;
  String get viewPlans => localizations.viewPlans;

  // How it works section
  String get howItWorks => localizations.howItWorks;
  String get chooseYourBox => localizations.chooseYourBox;
  String get pickAPlan => localizations.pickAPlan;
  String get enjoyMonthlyDelivery => localizations.enjoyMonthlyDelivery;
  String get selectWhatMatchesYourIntersets =>
      localizations.selectWhatMatchesYourIntersets;
  String get goldSilverOrBronze => localizations.goldSilverOrBronze;
  String get yourBoxArrives => localizations.yourBoxArrives;

  // Names and users
  String get nadineEssam => localizations.nadineEssam;

  // Payment services
  String get vodafoneHomeInternet => localizations.vodafoneHomeInternet;
  String get waterBillMonthly => localizations.waterBillMonthly;
  String get electricityBill => localizations.electricityBill;
  String get pleaseSelectProvider => localizations.pleaseSelectProvider;
  String get orange => localizations.orange;
  String get etisalat => localizations.etisalat;
  String get we => localizations.we;
  String get enterAccountNumber => localizations.enterAccountNumber;
  String get selectInstallmentType => localizations.selectInstallmentType;
  String get selectArea => localizations.selectArea;

  // Women empowerment session
  String get bookingSessionWith => localizations.bookingSessionWith;
  String get coachSpecialty => localizations.coachSpecialty;
  String get sessionPrice => localizations.sessionPrice;

  // Savings goals
  String get myHusbandsBirthday => localizations.myHusbandsBirthday;
  String get mothersDay => localizations.mothersDay;

  // Wallet and payments
  String get walletAndPayments => localizations.walletAndPayments;
  String get account => localizations.account;
  String get walletAndPaymentsMenu => localizations.walletAndPaymentsMenu;

  // Posts and social features
  String get createNewPost => localizations.createNewPost;
  String get postContent => localizations.postContent;
  String get enterPostContent => localizations.enterPostContent;
  String get image => localizations.image;
  String get text => localizations.text;
  String get addCommentWithPhoto => localizations.addCommentWithPhoto;
  String get shareYourThoughts => localizations.shareYourThoughts;
  String get share => localizations.share;
  String get postComments => localizations.postComments;
  String get comments => localizations.comments;
  String get writeAComment => localizations.writeAComment;
  String get post => localizations.post;
  String get commentPosted => localizations.commentPosted;
  String get memberManagement => localizations.memberManagement;
  String get searchForMember => localizations.searchForMember;
  String get joinRequests => localizations.joinRequests;
  String get accept => localizations.accept;
  String get reject => localizations.reject;
  String get members => localizations.members;

  // Subscription benefits and features
  String get subscriptionBenefits => localizations.subscriptionBenefits;
  String get enjoyFreeShipping => localizations.enjoyFreeShipping;
  String get saveUpTo30 => localizations.saveUpTo30;
  String get exclusiveProducts => localizations.exclusiveProducts;
  String get monthlyDiscounts => localizations.monthlyDiscounts;
  String get freeDeliviry => localizations.freeDeliviry;
  String get getAccessToPremium => localizations.getAccessToPremium;
  String get flexibleCancelation => localizations.flexibleCancelation;
  String get pauseOrCancelSubscription =>
      localizations.pauseOrCancelSubscription;
  String get pauseSubscription => localizations.pauseSubscription;
  String get cancelSubscription => localizations.cancelSubscription;
  String get selectPauseTime => localizations.selectPauseTime;
  String get pauseDuration => localizations.pauseDuration;

  // Address and delivery
  String get deliveryAddress => localizations.deliveryAddress;
  String get city => localizations.city;
  String get enterYourCity => localizations.enterYourCity;
  String get neighborhood => localizations.neighborhood;
  String get enterYourNeighborhood => localizations.enterYourNeighborhood;
  String get streetAndDetailedAddress => localizations.streetAndDetailedAddress;
  String get enterStreetAndAddress => localizations.enterStreetAndAddress;
  String get additionalNotes => localizations.additionalNotes;
  String get anyExtraNotes => localizations.anyExtraNotes;

  // Subscription details and pricing
  String get subscriptionDetails => localizations.subscriptionDetails;
  String get orderSummary => localizations.orderSummary;
  String get boxPrice => localizations.boxPrice;
  String get subscriptionPeriod => localizations.subscriptionPeriod;
  String get deliveryFees => localizations.deliveryFees;
  String get completeSubscription => localizations.completeSubscription;
  String get contentOfBox => localizations.contentOfBox;
  String get goldPlanPrice => localizations.goldPlanPrice;
  String get silverPlanPrice => localizations.silverPlanPrice;
  String get bronzePlanPrice => localizations.bronzePlanPrice;
  String get oneMonth => localizations.oneMonth;
  String get twoMonth => localizations.twoMonth;
  String get threeMonth => localizations.threeMonth;
  String get resumeJuly12 => localizations.resumeJuly12;
  String get resumeAug12 => localizations.resumeAug12;
  String get resumeSep12 => localizations.resumeSep12;
  String get skinCareBoxTitle => localizations.skinCareBoxTitle;
  String get skinCareBoxDescription => localizations.skinCareBoxDescription;
  String get subscribingToPlan => localizations.subscribingToPlan;

  // Profile and user data
  String get editProfile => localizations.editProfile;
  String get personalInformation => localizations.personalInformation;
  String get uploadImageDescription => localizations.uploadImageDescription;
  String get email => localizations.email;
  String get enterYourEmail => localizations.enterYourEmail;
  String get userAddress => localizations.userAddress;
  String get enterYourAddress => localizations.enterYourAddress;
  String get saveChanges => localizations.saveChanges;
  String get favorites => localizations.favorites;

  // Products and shopping
  String get stylishHandbag => localizations.stylishHandbag;
  String get priceEgp450 => localizations.priceEgp450;
  String get fiveDaysAgo => localizations.fiveDaysAgo;
  String get sarahAlAhmad => localizations.sarahAlAhmad;
  String get ahmedHassan => localizations.ahmedHassan;
  String get fatimaAli => localizations.fatimaAli;
  String get requestedTwoDaysAgo => localizations.requestedTwoDaysAgo;
  String get requestedOneDayAgo => localizations.requestedOneDayAgo;
  String get requestedThreeHoursAgo => localizations.requestedThreeHoursAgo;
  String get joinedSixMonthsAgo => localizations.joinedSixMonthsAgo;
  String get searchForProduct => localizations.searchForProduct;
  String get searchInYourCircles => localizations.searchInYourCircles;
  String get membersNumber => localizations.membersNumber;

  // Blog and articles
  String get searchForBlogPost => localizations.searchForBlogPost;
  String get yourRecentlyReadArticles => localizations.yourRecentlyReadArticles;
  String get latestArticles => localizations.latestArticles;
  String get mostRead => localizations.mostRead;
  String get parenting => localizations.parenting;
  String get beauty => localizations.beauty;
  String get health => localizations.health;
  String get moms => localizations.moms;
  String get family => localizations.family;
  String get friends => localizations.friends;
  String get readMore => localizations.readMore;
  String get skinCareRoutine => localizations.skinCareRoutine;
  String get skinCareTips => localizations.skinCareTips;
  String get quickHealthyMeals => localizations.quickHealthyMeals;
  String get healthyMealsDescription => localizations.healthyMealsDescription;
  String get earlyReadingSkills => localizations.earlyReadingSkills;
  String get readingSkillsDescription => localizations.readingSkillsDescription;
  String get articleDate => localizations.articleDate;
  String get blogDetails => localizations.blogDetails;
  String get developStrongBond => localizations.developStrongBond;
  String get sarahAlHassan => localizations.sarahAlHassan;
  String get bondingDescription => localizations.bondingDescription;
  String get similarArticles => localizations.similarArticles;

  // Store and e-commerce
  String get store => localizations.store;
  String get productDetails => localizations.productDetails;
  String get summerCollection => localizations.summerCollection;
  String get saveUpTo40Off => localizations.saveUpTo40Off;
  String get bestSellers => localizations.bestSellers;
  String get orderReview => localizations.orderReview;
  String get orderStatus => localizations.orderStatus;
  String get awaitingConfirmation => localizations.awaitingConfirmation;
  String get review => localizations.review;
  String get payment => localizations.payment;
  String get confirmation => localizations.confirmation;
  String get products => localizations.products;
  String get deleteAll => localizations.deleteAll;
  String get elegantHandbag => localizations.elegantHandbag;
  String get productDetailsText => localizations.productDetailsText;
  String get productPrice => localizations.productPrice;
  String get tax => localizations.tax;
  String get taxAmount => localizations.taxAmount;
  String get free => localizations.free;
  String get orderTotalAmount => localizations.orderTotalAmount;
  String get discountCoupon => localizations.discountCoupon;
  String get enterCouponCode => localizations.enterCouponCode;
  String get pay => localizations.pay;
  String get orderPayment => localizations.orderPayment;
  String get address => localizations.address;
  String get change => localizations.change;
  String get homeAddress => localizations.homeAddress;
  String get saraSmith => localizations.saraSmith;
  String get addressDetails => localizations.addressDetails;
  String get phoneNumber => localizations.phoneNumber;
  String get defaultAddress => localizations.defaultAddress;
  String get addNewAddress => localizations.addNewAddress;
  String get district => localizations.district;
  String get enterDistrictName => localizations.enterDistrictName;
  String get streetAndBuilding => localizations.streetAndBuilding;
  String get enterStreetAndBuilding => localizations.enterStreetAndBuilding;
  String get paymentAdditionalNotes => localizations.paymentAdditionalNotes;
  String get enterAdditionalNotes => localizations.enterAdditionalNotes;
  String get selectCity => localizations.selectCity;
  String get cairo => localizations.cairo;
  String get alexandria => localizations.alexandria;
  String get giza => localizations.giza;
  String get close => localizations.close;
  String get myWallet => localizations.myWallet;
  String get walletBalance => localizations.walletBalance;
  String get cashOnDelivery => localizations.cashOnDelivery;
  String get secureTransaction => localizations.secureTransaction;
  String get confirmOrder => localizations.confirmOrder;
  String get ok => localizations.ok;
  String get all => localizations.all;
  String get incoming => localizations.incoming;
  String get outgoing => localizations.outgoing;

  // Wedding and services
  String get topRatedPhotographers => localizations.topRatedPhotographers;
  String get topRatedMakeupArtists => localizations.topRatedMakeupArtists;
  String get topRatedWeddingPlanners => localizations.topRatedWeddingPlanners;
  String get topRatedVenues => localizations.topRatedVenues;
  String get topRatedCatering => localizations.topRatedCatering;
  String get viewDetails => localizations.viewDetails;
  String get photographers => localizations.photographers;
  String get makeupArtists => localizations.makeupArtists;
  String get weddingPlanners => localizations.weddingPlanners;
  String get venues => localizations.venues;
  String get catering => localizations.catering;
  String get searchForService => localizations.searchForService;

  // Bills and payments
  String get chooseServiceToPay => localizations.chooseServiceToPay;
  String get telecomInternetBills => localizations.telecomInternetBills;
  String get mobileInternetTopUp => localizations.mobileInternetTopUp;
  String get electricity => localizations.electricity;
  String get gas => localizations.gas;
  String get waterBills => localizations.waterBills;
  String get installmentsServices => localizations.installmentsServices;
  String get recentPayments => localizations.recentPayments;
  String get chooseYourProvider => localizations.chooseYourProvider;
  String get internet => localizations.internet;
  String get mobile => localizations.mobile;
  String get landline => localizations.landline;
  String get enterPhoneNumberLandline => localizations.enterPhoneNumberLandline;
  String get billAmount => localizations.billAmount;
  String get dueDate => localizations.dueDate;
  String get invoiceNumber => localizations.invoiceNumber;
  String get next => localizations.next;
  String get payNow => localizations.payNow;
  String get rechargeAmount => localizations.rechargeAmount;
  String get amountToBePaid => localizations.amountToBePaid;
  String get vodafone => localizations.vodafone;
  String get egp => localizations.egp;
  String get successfulPayment => localizations.successfulPayment;
  String get paymentCompletedSuccessfully =>
      localizations.paymentCompletedSuccessfully;
  String get transactionReference => localizations.transactionReference;
  String get backToServices => localizations.backToServices;

  // Shopping categories
  String get clothing => localizations.clothing;
  String get accessories => localizations.accessories;
  String get shoes => localizations.shoes;
  String get skirts => localizations.skirts;
  String get productsCount => localizations.productsCount;
  String get sortByLatest => localizations.sortByLatest;
  String get healthCategory => localizations.healthCategory;
  String get educationCategory => localizations.educationCategory;
  String get financeCategory => localizations.financeCategory;
  String get lifestyleCategory => localizations.lifestyleCategory;

  // Onboarding
  String get onboardingTitle1 => localizations.onboardingTitle1;
  String get onboardingDescription1 => localizations.onboardingDescription1;
  String get onboardingTitle2 => localizations.onboardingTitle2;
  String get onboardingDescription2 => localizations.onboardingDescription2;
  String get onboardingTitle3 => localizations.onboardingTitle3;
  String get onboardingDescription3 => localizations.onboardingDescription3;

  // Circles and community
  String get animalsCircle => localizations.animalsCircle;
  String get ownerRole => localizations.ownerRole;
  String get janeDoe => localizations.janeDoe;
  String get twoHoursAgo => localizations.twoHoursAgo;
  String get puppyPostContent => localizations.puppyPostContent;

  // Orders and status
  String get myOrders => localizations.myOrders;
  String get inProgress => localizations.inProgress;
  String get delivered => localizations.delivered;
  String get cancelled => localizations.cancelled;
  String get orderDate => localizations.orderDate;
  String get orderNumber => localizations.orderNumber;
  String get totalLabel => localizations.totalLabel;
  String get orderAmount => localizations.orderAmount;
  String get orderConfirmation => localizations.orderConfirmation;
  String get orderDetails => localizations.orderDetails;
  String get luxuryHandbag => localizations.luxuryHandbag;
  String get colorWhite => localizations.colorWhite;
  String get price299 => localizations.price299;
  String get quantityOne => localizations.quantityOne;
  String get totalPrice300 => localizations.totalPrice300;
  String get orderDate2 => localizations.orderDate2;
  String get orderNumber2 => localizations.orderNumber2;
  String get addressExample => localizations.addressExample;
  String get phoneExample => localizations.phoneExample;
  String get subtotalAmount => localizations.subtotalAmount;
  String get shippingFeeAmount => localizations.shippingFeeAmount;
  String get vatAmount => localizations.vatAmount;
  String get totalAmountExample => localizations.totalAmountExample;
  String get done => localizations.done;
  String get confirmed => localizations.confirmed;

  // Parenting and tips
  String get parentingTips => localizations.parentingTips;
  String get buildingTrustAndCommunication =>
      localizations.buildingTrustAndCommunication;
  String get effectiveParentingDescription =>
      localizations.effectiveParentingDescription;

  // Legal and terms
  String get termsAndConditions => localizations.termsAndConditions;
  String get introduction => localizations.introduction;
  String get introductionContent => localizations.introductionContent;
  String get userObligations => localizations.userObligations;
  String get userObligationsContent => localizations.userObligationsContent;
  String get limitationOfLiability => localizations.limitationOfLiability;
  String get limitationOfLiabilityContent =>
      localizations.limitationOfLiabilityContent;
  String get modifications => localizations.modifications;
  String get modificationsContent => localizations.modificationsContent;
  String get termination => localizations.termination;
  String get terminationContent => localizations.terminationContent;

  // Women empowerment and coaching
  String get mentorship => localizations.mentorship;
  String get event => localizations.event;
  String get workshops => localizations.workshops;
  String get resources => localizations.resources;
  String get finding => localizations.finding;
  String get topRatedCoaches => localizations.topRatedCoaches;
  String get bookASession => localizations.bookASession;
  String get postProduct => localizations.postProduct;
  String get addNewProduct => localizations.addNewProduct;
  String get mySubscriptions => localizations.mySubscriptions;

  // Privacy policy
  String get privacyPolicy => localizations.privacyPolicy;
  String get privacyIntroduction => localizations.privacyIntroduction;
  String get privacyIntroductionContent =>
      localizations.privacyIntroductionContent;
  String get informationCollection => localizations.informationCollection;
  String get informationCollectionContent =>
      localizations.informationCollectionContent;
  String get informationUse => localizations.informationUse;
  String get informationUseContent => localizations.informationUseContent;
  String get dataSecurity => localizations.dataSecurity;
  String get dataSecurityContent => localizations.dataSecurityContent;
  String get contactUs => localizations.contactUs;
  String get contactUsContent => localizations.contactUsContent;

  // Product management
  String get shippingInformation => localizations.shippingInformation;
  String get nameLabel => localizations.nameLabel;
  String get productName => localizations.productName;
  String get enterProductName => localizations.enterProductName;
  String get productDescription => localizations.productDescription;
  String get describeYourProduct => localizations.describeYourProduct;
  String get enterThePrice => localizations.enterThePrice;
  String get productImage => localizations.productImage;
  String get bags => localizations.bags;
  String get jewelry => localizations.jewelry;
  String get electronics => localizations.electronics;
  String get homeDecor => localizations.homeDecor;
  String get frequentlyAskedQuestions => localizations.frequentlyAskedQuestions;

  // Transportation and delivery
  String get transportation => localizations.transportation;
  String get foodDelivery => localizations.foodDelivery;
  String get rideHailing => localizations.rideHailing;
  String get transportationServices => localizations.transportationServices;
  String get rideHailingTransportOptions =>
      localizations.rideHailingTransportOptions;
  String get bookYourRide => localizations.bookYourRide;
  String get reminder => localizations.reminder;
  String get reminderDescription => localizations.reminderDescription;
  String get rating => localizations.rating;
  String get description => localizations.description;
  String get orderPlaced => localizations.orderPlaced;
  String get orderProcessing => localizations.orderProcessing;
  String get amount => localizations.amount;
  String get sendMoney => localizations.sendMoney;
  String get payOrder => localizations.payYourOrder;
  String get remaining => localizations.remaining;
  String get logoutConfirmation => localizations.logoutConfirmation;
  String get welcomeUser => localizations.welcomeUser;
  String get currentDate => localizations.currentDate;

  // Subscription cancellation
  String get confirmCancellation => localizations.confirmCancellation;
  String get areYouSureCancelSubscription =>
      localizations.areYouSureCancelSubscription;
  String get cancelingAccumulatedPoints =>
      localizations.cancelingAccumulatedPoints;
  String get losingExclusiveAccess => localizations.losingExclusiveAccess;
  String get subscriptionCanceledImmediately =>
      localizations.subscriptionCanceledImmediately;

  // Pause subscription dialog
  String get selectPreferredPauseDuration =>
      localizations.selectPreferredPauseDuration;
  String get threeMonths => localizations.threeMonths;
  String get sixMonths => localizations.sixMonths;
  String get thirtyDays => localizations.thirtyDays;
  String get ninetyDays => localizations.ninetyDays;
  String get oneHundredEightyDays => localizations.oneHundredEightyDays;
  String get importantNotes => localizations.importantNotes;
  String get subscriptionPausedForDuration =>
      localizations.subscriptionPausedForDuration;
  String get resumeSubscriptionAnytime =>
      localizations.resumeSubscriptionAnytime;
  String get confirmPause => localizations.confirmPause;

  // Baby hub screen
  String get kidsClothing => localizations.kidsClothing;
  String get misrPharmacy => localizations.misrPharmacy;
  String get babyEssentials => localizations.babyEssentials;
  String get howToDevelopEarlyReadingSkills =>
      localizations.howToDevelopEarlyReadingSkills;
  String get readAboutImportanceOfEarlyReading =>
      localizations.readAboutImportanceOfEarlyReading;

  String get fastFoodDelivery => localizations.fastFoodDelivery;
  String get orderNow => localizations.orderNow;
  String get bookNow => localizations.bookNow;
  String get beautyServices => localizations.beautyServices;
  String get bookingConfirmedSuccessfully => localizations.bookingConfirmedSuccessfully;
  String get kidsStore => localizations.kidsStore;
  String get addedToCart => localizations.addedToCart;
  String get continueShopping => localizations.continueShopping;
  String get goToCart => localizations.goToCart;
  String get addedToFavorites => localizations.addedToFavorites;
  String get topRatedCaterers => localizations.topRatedCaterers;

}
  