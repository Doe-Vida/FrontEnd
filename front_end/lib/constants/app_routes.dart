import 'package:flutter/material.dart';
import 'package:front_end/views/pages/auth/login/login_page.dart';
import 'package:front_end/views/pages/auth/signUp/signup_page.dart';
import 'package:front_end/views/pages/custom_navigation_bar.dart';
import 'package:front_end/views/pages/init/init_page.dart';
import 'package:front_end/views/pages/steps/steps_page.dart';

import '../views/pages/home/home_page.dart';

class AppRoutes
{
  static const String navigationBar = "navigationBar";
  //auth
  static const String loginPage = "login";
  static const String signUpPage = "signUp";
  //home
  static const String homePage = "home";
  //init
  static const String initPage = "init";
  //steps
  static const String stepsPage = "steps";

  static Route<dynamic> controller(RouteSettings settings)
  {
    switch(settings.name)
    {
      case navigationBar:
        return MaterialPageRoute(builder: (context) => const CustomNavigationBar());
      case loginPage:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case signUpPage:
        return MaterialPageRoute(builder: (context) => const SignUpPage());
      case homePage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case initPage:
        return MaterialPageRoute(builder: (context) => const InitPage());
      case stepsPage:
        return MaterialPageRoute(builder: (context) => const StepsPage());
      default:
      throw("Essa rota não existe");
    }
  }
}