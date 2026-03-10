import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/features/add_product/presentation/screens/add_product_screen.dart';
import 'package:her_wallet/features/auth/presentation/login/screens/enter_verfication_code_screen.dart';
import 'package:her_wallet/features/auth/presentation/login/screens/forget_password_screen.dart';
import 'package:her_wallet/features/auth/presentation/login/screens/new_password_screen.dart';
import 'package:her_wallet/features/auth/presentation/login/screens/reset_sucess_screen.dart';
import 'package:her_wallet/features/auth/presentation/signup/screens/sign_up_screen.dart';
import 'package:her_wallet/features/baby_hub/presentation/screens/baby_hub_screen.dart';
import 'package:her_wallet/features/baby_hub/presentation/cubit/baby_hub_cubit.dart';
import 'package:her_wallet/features/blog/presentation/screens/blog_screen.dart';
import 'package:her_wallet/features/blog_details/presentation/screens/blog_details_screen.dart';
import 'package:her_wallet/features/bride_zone/presentation/cubit/bride_zone_cubit.dart';
import 'package:her_wallet/features/bride_zone/presentation/screens/bride_zone_screen.dart';
import 'package:her_wallet/features/complete_subscription/presentation/screens/complete_subscription_screen.dart';
import 'package:her_wallet/features/create_post/presentation/screens/create_post_screen.dart';
import 'package:her_wallet/features/edit_profile/presentation/screens/edit_profile_screen.dart';
import 'package:her_wallet/features/favourites/presentation/screens/favorites_screen.dart';
import 'package:her_wallet/features/adds_hub/presentation/screens/adds_hub_screen.dart';
import 'package:her_wallet/features/adds_hub/presentation/cubit/her_souq_cubit.dart';
import 'package:her_wallet/features/gifts/gifts_screen.dart';
import 'package:her_wallet/features/home_layout/presentation/cubits/home_cubit.dart';
import 'package:her_wallet/features/home_layout/presentation/screens/home_layout.dart';
import 'package:her_wallet/features/installments/instalments.dart';
import 'package:her_wallet/features/member_management/presentation/screens/member_management_screen.dart';
import 'package:her_wallet/features/my_circle_details/presentation/screens/my_circle_details_screen.dart';
import 'package:her_wallet/features/my_orders/presentation/cubit/my_orders_cubit.dart';
import 'package:her_wallet/features/my_orders/presentation/screens/my_orders_screen.dart';
import 'package:her_wallet/features/new_circle/presentation/screens/new_circle_screen.dart';
import 'package:her_wallet/features/notifications/notifications_screen.dart';
import 'package:her_wallet/features/onboarding/onboarding_screen.dart';
import 'package:her_wallet/features/order_confirmation/presentation/screens/order_confirmation_screen.dart';
import 'package:her_wallet/features/order_details/presentation/screens/order_details.dart';
import 'package:her_wallet/features/order_payment/presentation/screens/order_payment.dart';
import 'package:her_wallet/features/order_review/presentation/screens/order_review.dart';
import 'package:her_wallet/features/parenting_tips/presentation/screens/parenting_tips_screen.dart';
import 'package:her_wallet/features/payment_services/presentation/screens/payment_services_screen.dart';
import 'package:her_wallet/features/post_comments/presentation/screens/post_comments_screen.dart';
import 'package:her_wallet/features/privacy_policy/presentation/screens/privacy_policy_screen.dart';
import 'package:her_wallet/features/product_details/presentation/screens/product_details.dart';
import 'package:her_wallet/features/recent_payments/presentation/screens/recent_payments_screen.dart';
import 'package:her_wallet/features/recent_transactions/presentation/screens/recent_transactions_screen.dart';
import 'package:her_wallet/features/saving_goals/presentation/screens/saving_goals_screen.dart';
import 'package:her_wallet/features/saving_goals_payment.dart/saving_goals_payment_screen.dart';
import 'package:her_wallet/features/servies_for_her/presentation/screens/for_her_service.dart';
import 'package:her_wallet/features/servies_for_her/presentation/cubit/for_her_service_cubit.dart';
import 'package:her_wallet/features/subscription/presentation/cubits/subscription_cubit.dart';
import 'package:her_wallet/features/subscription_details/presentation/screens/subscription_details_screen.dart';
import 'package:her_wallet/features/subscriptions_boxes/presentation/screens/subscription_boxes.dart';
import 'package:her_wallet/features/terms_and_conditions/presentation/screens/terms_and_conditions_screen.dart';
import 'package:her_wallet/features/top_up_balance/presentation/screens/top_up_balance_screen.dart';
import 'package:her_wallet/features/top_up_details/presentation/screens/top_up_details_screen.dart';
import 'package:her_wallet/features/splash/splash_screen.dart';
import 'package:her_wallet/features/wallet&payments/presentation/screens/wallet_and_payments_screen.dart';
import 'package:her_wallet/features/women_empowerment/presentation/screens/women_empowerment_screen.dart';
import 'package:her_wallet/features/women_empowerment/presentation/cubit/women_empowerment_cubit.dart';
import '../../features/auth/presentation/login/screens/login_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String unAvailable = '/unavailable';
  static const String home = '/home';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String profile = '/profile';
  static const String forgotPassword = '/forgot-password';
  static const String enterVerification = '/enter-verification';
  static const String newPassword = '/new-password';
  static const String resetSuccess = '/reset-success';
  static const String topUpBalance = '/top-up-balance';
  static const String topUpDetails = '/top-up-details';
  static const String recentTransactions = '/recent-transactions';
  static const String newCircle = '/new-circle';
  static const String myCircleDetails = '/my-circle-details';
  static const String createPost = '/create-post';
  static const String postComments = '/post-comments';
  static const String memberManagement = '/member-management';
  static const String subscriptionDetails = '/subscription-details';
  static const String completeSubscription = '/complete-subscription';
  static const String productDetails = '/product-details';
  static const String orderReview = '/order-review';
  static const String orderPayment = '/order-payment';
  static const String herSouq = '/her-souq';
  static const String womenEmpowerment = '/women-empowerment';
  static const String addProduct = '/add-product';
  static const String brideZone = '/bride-zone';
  static const String babyHub = '/baby-hub';
  static const String bazar = '/bazar';
  static const String parentingTips = '/parenting-tips';
  static const String forHerServices = '/for-her-services';
  static const String paymentServices = '/payment-services';
  static const String subscription = '/subscription';
  static const String mycircle = '/my-circle';
  static const String walletAndPayments = '/wallet-and-payments';
  static const String myOrders = '/my-orders';
  static const String orderDetails = '/order-details';
  static const String favorites = '/favorites';
  static const String editProfile = '/edit-profile';
  static const String subscriptionBoxes = '/subscription-boxes';
  static const String privacyPolicy = '/privacy-policy';
  static const String termsAndConditions = '/terms-and-conditions';
  static const String orderConfirmation = '/order-confirmation';
  static const String blog = '/blog';
  static const String blogDetails = '/blog-details';
  static const String savingGoals = '/saving-goals';
  static const String recentPayments = '/recent-payments';
  static const String notifications = '/notifications';
  static const String gifts = '/gifts';
  static const String installments = '/installments';
  static const String savingGoalsPayment = '/saving-goals-payment';

  
  static Map<String, WidgetBuilder> get routes {
    return {
      home:
          (context) => BlocProvider(
            create: (context) => HomeLayoutCubit(),
            child: HomeLayout(),
          ),
      splash: (context) => const SplashScreen(),
      onboarding: (context) => const OnboardingScreen(),
      login: (context) => const LoginScreen(),
      signup: (context) => const SignUpScreen(),
      forgotPassword: (context) => const ForgotPasswordScreen(),
      enterVerification: (context) => const EnterVerificationScreen(),
      newPassword: (context) => NewPasswordScreen(),
      resetSuccess: (context) => const ResetSuccessScreen(),
      topUpBalance: (context) => const TopUpBalanceScreen(isSendMoney: false,),
      topUpDetails: (context) => TopUpDetailsScreen(),
      recentTransactions: (context) => RecentTransactionsScreen(),
      newCircle: (context) => NewCircleScreen(),
      myCircleDetails: (context) => MyCircleDetailsScreen(circleName: '', imagePath: '', isOwner: false,),
      createPost: (context) => CreatePostScreen(),
      postComments: (context) => PostCommentsScreen(),
      memberManagement: (context) => MemberManagementScreen(),
      subscriptionDetails: (context) => const SubscriptionDetailsScreen(title: '', imagePath: '',),
      completeSubscription: (context) => const CompleteSubscriptionScreen(),
      productDetails: (context) => ProductDetailsScreen(title: '', imageUrl: '', price: '', fromAddsHub: true,),
      orderReview: (context) => OrderReviewScreen(),
      orderPayment: (context) => OrderPaymentScreen(),
      herSouq:
          (context) => BlocProvider(
            create: (context) => HerSouqCubit(),
            child: const AddsHubScreen(),
          ),
      womenEmpowerment:
          (context) => BlocProvider(
            create: (context) => WomenEmpowermentCubit(),
            child: const WomenEmpowermentScreen(),
          ),
      addProduct: (context) => AddProductScreen(),
      brideZone:
          (context) => BlocProvider(
            create: (context) => BrideZoneCubit(),
            child: BrideZoneScreen(),
          ),
      babyHub:
          (context) => BlocProvider(
            create: (context) => BabyHubCubit(),
            child: const BabyHubScreen(),
          ),
      parentingTips: (context) => ParentingTipsScreen(),
      forHerServices:
          (context) => BlocProvider(
            create: (context) => ForHerServiceCubit(),
            child: const ForHerServicesScreen(),
          ),
      paymentServices: (context) => PaymentServicesScreen(),
      walletAndPayments: (context) => WalletAndPaymentsScreen(),
      myOrders:
          (context) => BlocProvider(
            create: (context) => MyOrdersCubit(),
            child: MyOrdersScreen(),
          ),
      orderDetails: (context) => const OrderDetailsScreen(),
      favorites: (context) => const FavoritesScreen(),
      editProfile: (context) => const EditProfileScreen(),
      subscriptionBoxes:
          (context) => BlocProvider(
            create: (context) => SubscriptionCubit(),
            child: SubscriptionBoxesScreen(),
          ),
      privacyPolicy: (context) => const PrivacyPolicyScreen(),
      termsAndConditions: (context) => const TermsAndConditionsScreen(),
      orderConfirmation: (context) => OrderConfirmationScreen(),
      blog: (context) => const BlogScreen(),
      blogDetails: (context) => const BlogDetailsScreen(),
      savingGoals: (context) => SavingGoalsScreen(),
      recentPayments: (context) => RecentPaymentsScreen(),
      notifications: (context) => NotificationsScreen(),

      // Add more routes here
    };
  }

 static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case unAvailable:
        return  MaterialPageRoute(builder: (context) => const UnAvailableScreen());
      case splash:
        return pageRouteBuilder(const SplashScreen());
      case onboarding:
        return pageRouteBuilder(const OnboardingScreen());
      case login:
        return pageRouteBuilder(const LoginScreen());
      case signup:
        return pageRouteBuilder(const SignUpScreen());
      case forgotPassword:
        return pageRouteBuilder(const ForgotPasswordScreen());
      case enterVerification:
        return pageRouteBuilder(const EnterVerificationScreen());
      case newPassword:
        return pageRouteBuilder(NewPasswordScreen());
      case resetSuccess:
        return pageRouteBuilder(const ResetSuccessScreen());
      case topUpBalance:
      final args = settings.arguments as Map<String, dynamic>?;
      bool isSendMoney = args != null && args['isSendMoney'] == true;
        return pageRouteBuilder(TopUpBalanceScreen(isSendMoney: isSendMoney));
      case topUpDetails:
        return pageRouteBuilder(TopUpDetailsScreen());
      case recentTransactions:
        return pageRouteBuilder(RecentTransactionsScreen());
      case newCircle:
        return pageRouteBuilder(NewCircleScreen());
      case myCircleDetails:
      final argsCircle = settings.arguments as Map<String, dynamic>;
      final circleName = argsCircle['circleName'] as String;
      final imagePath = argsCircle['imagePath'] as String;
      final isOwner = argsCircle['isOwner'] as bool;
        return pageRouteBuilder(MyCircleDetailsScreen(
          circleName: circleName,
          imagePath: imagePath,
          isOwner: isOwner,
        ));
      case createPost:
        return pageRouteBuilder(CreatePostScreen());
      case postComments:
        return pageRouteBuilder(PostCommentsScreen());
      case memberManagement:
        return pageRouteBuilder(MemberManagementScreen());
      case subscriptionDetails:
      final argsSubscription = settings.arguments as Map<String, dynamic>?;
      final title = argsSubscription?['title'] ?? '';
      final imagePath = argsSubscription?['imagePath'] ?? '';
      return pageRouteBuilder(SubscriptionDetailsScreen(
        title: title,
        imagePath: imagePath,
      ));
      case completeSubscription:
        return pageRouteBuilder(const CompleteSubscriptionScreen());
      case productDetails:
      final argsProduct = settings.arguments as Map<String, dynamic>?;
      final title = argsProduct?['title'] ?? '';
    final imageUrl = argsProduct?['imageUrl'] ?? '';
    final price = argsProduct?['price'] ?? '850 EGP';
    final fromAddsHub = argsProduct?['fromAddsHub'] ?? false;

        return pageRouteBuilder(ProductDetailsScreen(
          title: title,
          imageUrl: imageUrl,
          price: price,
          fromAddsHub: fromAddsHub,
        ));

      case orderReview:
        return pageRouteBuilder(OrderReviewScreen());
      case orderPayment:
        return pageRouteBuilder(OrderPaymentScreen());
      case herSouq:
        return pageRouteBuilder(
          BlocProvider(
            create: (context) => HerSouqCubit(),
            child: const AddsHubScreen(),
          ),
        );
      case womenEmpowerment:
        return pageRouteBuilder(
          BlocProvider(
            create: (context) => WomenEmpowermentCubit(),
            child: const WomenEmpowermentScreen(),
          ),
        );
      case addProduct:
        return pageRouteBuilder(AddProductScreen());
      case brideZone:
        return pageRouteBuilder(
          BlocProvider(
            create: (context) => BrideZoneCubit(),
            child: BrideZoneScreen(),
          ),
        );
      case babyHub:
        return pageRouteBuilder(
          BlocProvider(
            create: (context) => BabyHubCubit(),
            child: const BabyHubScreen(),
          ),
        );
      case parentingTips:
      final argsTips = settings.arguments as Map<String, dynamic>?;
      final titleTip = argsTips?['title'] as String?;
      final imageUrl = argsTips?['imageUrl'] as String?;
      return pageRouteBuilder(ParentingTipsScreen(
        title: titleTip,
        imageUrl: imageUrl,
      ));
      case forHerServices:
        return pageRouteBuilder(
          BlocProvider(
            create: (context) => ForHerServiceCubit(),
            child: const ForHerServicesScreen(),
          ),
        );
      case paymentServices:
        return pageRouteBuilder(PaymentServicesScreen());
      case walletAndPayments:
        return pageRouteBuilder(WalletAndPaymentsScreen());
      case myOrders:
        return pageRouteBuilder(
          BlocProvider(
            create: (context) => MyOrdersCubit(),
            child: MyOrdersScreen(),
          ),
        );
      case orderDetails:
        return pageRouteBuilder(const OrderDetailsScreen());
      case favorites:
        return pageRouteBuilder(const FavoritesScreen());
      case editProfile:
        return pageRouteBuilder(const EditProfileScreen());
      case subscriptionBoxes:
        return pageRouteBuilder(
          BlocProvider(
            create: (context) => SubscriptionCubit(),
            child: SubscriptionBoxesScreen(),
          ),
        );
      case privacyPolicy:
        return pageRouteBuilder(const PrivacyPolicyScreen());
      case termsAndConditions:
        return pageRouteBuilder(const TermsAndConditionsScreen());
      case orderConfirmation:
        return pageRouteBuilder(OrderConfirmationScreen());
      case blog:
        return pageRouteBuilder(const BlogScreen());
      case blogDetails:
        return pageRouteBuilder(const BlogDetailsScreen());
      case savingGoals:
        return pageRouteBuilder(SavingGoalsScreen());
      case recentPayments:
        return pageRouteBuilder(RecentPaymentsScreen());
      case notifications:
        return pageRouteBuilder(NotificationsScreen());
      case home:
        return pageRouteBuilder(
          BlocProvider(
            create: (context) => HomeLayoutCubit(),
            child: HomeLayout(),
          ),
        );
      case gifts:
        return pageRouteBuilder(const GiftsScreen());
      case installments:
        return pageRouteBuilder(const InstallmentsScreen());
      case savingGoalsPayment:
      final argsSaving = settings.arguments as Map<String, dynamic>?;
      final titleSaving = argsSaving?['title'] ?? 'Saving Goals Payment';
        return pageRouteBuilder(SavingGoalsPaymentScreen(title: titleSaving));
      default:
        return null;
    }
  }


  static PageRouteBuilder<dynamic> pageRouteBuilder(Widget screen) {
    return PageRouteBuilder(

        transitionDuration: Duration(milliseconds: 500),

        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(-1.0, 0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) => screen,
      );
  }






}

class UnAvailableScreen extends StatelessWidget {
  const UnAvailableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unavailable'),
      ),
      body: const Center(
        child: Text('App is currently unavailable.'),
      ),
    );
  }
  
}

