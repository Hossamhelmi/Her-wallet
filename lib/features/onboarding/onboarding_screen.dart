import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/features/onboarding/widgets/onboarding_page_model.dart';
import 'package:her_wallet/features/onboarding/widgets/onboarding_presenter.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingPagePresenter(
        pages: [
          OnboardingPageModel(
            title: context.localizations.onboardingTitle1,
            description: context.localizations.onboardingDescription1,
            imagePath: 'assets/images/onboarding1.jpeg',
            bgColor: Colors.white,
          ),
          OnboardingPageModel(
            title: context.localizations.onboardingTitle2,
            description: context.localizations.onboardingDescription2,
            imagePath: 'assets/images/onboarding2.jpeg',
            bgColor: Colors.white,
          ),
          OnboardingPageModel(
            title: context.localizations.onboardingTitle3,
            description: context.localizations.onboardingDescription3,
            imagePath: 'assets/images/onboarding3.jpeg',
            bgColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

