import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/ui/signin_view.dart';
import 'package:fruits_hub/features/auth/ui/signup_view.dart';
import 'package:fruits_hub/features/on_boarding/ui/on_boarding_view.dart';
import 'package:fruits_hub/features/splash/ui/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (_) => const SigninView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (_) => const SignupView());

    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
