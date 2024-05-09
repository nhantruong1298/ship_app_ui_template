import 'package:app_merchant/src/presentation/onboarding/screens/onboarding_add_address_screen.dart';
import 'package:app_merchant/src/presentation/onboarding/screens/onboarding_choose_language_screen.dart';
import 'package:app_merchant/src/presentation/onboarding/screens/onboarding_choose_location_screen.dart';
import 'package:app_merchant/src/presentation/onboarding/screens/onboarding_request_permission_screen.dart';

import 'package:flutter/material.dart';

import 'route_path.dart';

class AppRoute {
  static Route onGenerateInitialRoutes(RouteSettings settings) {
    switch (settings.name) {
      //Màn hình onboarding
      case RoutePath.onboardingChooseLanguage:
        return MaterialPageRoute(
            builder: (_) => const OnboardingChooseLanguageScreen(),
            settings: settings);

      case RoutePath.onboardingRequestPermission:
        return MaterialPageRoute(
            builder: (_) => const OnboardingRequestPermissionScreen(),
            settings: settings);

      case RoutePath.onboardingChooseLocation:
        return MaterialPageRoute(
            builder: (_) => const OnboardingChooseLocationScreen(),
            settings: settings);

      case RoutePath.onboardingAddAddress:
        return MaterialPageRoute(
            builder: (_) => const OnboardingAddAddressScreen(),
            settings: settings);

      // Màn hình default
      default:
        return MaterialPageRoute(
            builder: (_) => const OnboardingChooseLanguageScreen(),
            settings: settings);
    }
  }
}
