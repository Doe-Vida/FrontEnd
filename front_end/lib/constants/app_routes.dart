import 'package:flutter/material.dart';
import 'package:front_end/views/pages/auth/login/login_page.dart';
import 'package:front_end/views/pages/auth/signUp/signup_page.dart';
import 'package:front_end/views/pages/custom_navigation_bar.dart';
import 'package:front_end/views/pages/init/init_page.dart';

import '../views/pages/home/homePage.dart';

class AppRoutes
{
  //auth
  static const String loginPage = "login";
  static const String signUpPage = "signUp";
  //home
  static const String homePage = "home";
  //init
  static const String initPage = "init";
  static const String navigationBar = "navigationBar";

  static Route<dynamic> controller(RouteSettings settings)
  {
    switch(settings.name)
    {
      case loginPage:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case signUpPage:
        return MaterialPageRoute(builder: (context) => const SignUpPage());
      case homePage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case initPage:
        return MaterialPageRoute(builder: (context) => const InitPage());
      case navigationBar:
        return MaterialPageRoute(builder: (context) => const CustomNavigationBar());
      default:
      throw("Essa rota não existe");
    }
  }
}