import 'package:flutter/material.dart';
import 'package:online_clinic/core/routing/routs.dart';
import 'package:online_clinic/features/login/login_screen.dart';
import 'package:online_clinic/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No page found for this route ${settings.name}'),
            ),
          ),
        );
    }
  }
}
