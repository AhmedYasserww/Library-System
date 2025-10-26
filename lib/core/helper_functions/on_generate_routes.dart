import 'package:flutter/material.dart';
import 'package:library_system/features/auth/presentation/views/sign_in_view.dart';
import 'package:library_system/features/on_boarding/presentation/views/on_boarding_view.dart';


Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    // case SplashView.routeName:
    //   return MaterialPageRoute(builder: (context) => const SplashView());
     case OnBoardingView.routeName:
       return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => const SignInView());


    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
