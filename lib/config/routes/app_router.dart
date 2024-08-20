import 'package:e_commerce/core/components/reuseable_components.dart';
import 'package:e_commerce/features/cart/presentation/pages/cart_screen.dart';
import 'package:e_commerce/features/home/presentation/pages/home.dart';
import 'package:e_commerce/features/login/presentation/pages/login.dart';
import 'package:e_commerce/features/signUp/presentation/pages/signup.dart';
import 'package:e_commerce/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutesName {
  static const String splash = "/";
  static const String login = "login";
  static const String home = "home";
  static const String signUp = "signup";
  static const String cart = "cart";
}


class AppRoute {

  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesName.splash:
        return MaterialPageRoute(builder: (context) =>  SplashScreen(),);
      case AppRoutesName.login:
        return MaterialPageRoute(builder: (context) =>  LoginScreen(),);
      case AppRoutesName.home:
        return MaterialPageRoute(builder: (context) =>   HomeScreen(),);
      case AppRoutesName.signUp:
        return MaterialPageRoute(builder: (context) =>   SignUpScreen(),);
      case AppRoutesName.cart:
        return MaterialPageRoute(builder: (context) =>   CartScreen(),);

      default:
        return MaterialPageRoute(builder: (context) => unDefineRoute(),);
    }
  }
}