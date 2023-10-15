import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doe Vida',
      color: AppColors.PINK_PRIMARY,
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: AppColors.WHITE
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.controller,
      initialRoute: AppRoutes.navigationBar,
    );
  }
}