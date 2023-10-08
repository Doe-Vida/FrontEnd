import 'package:flutter/material.dart';
import 'package:front_end/constants/app_images.dart';
import 'package:front_end/constants/app_routes.dart';
import 'package:front_end/views/widgets/buttons/custom_button.dart';
import 'package:front_end/views/widgets/buttons/custom_button_white.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Image.asset(AppImages.DONATIONS),
              CustomButton(
                text: "Login", 
                onTap: () => Navigator.pushNamed(context, AppRoutes.loginPage)
              ),
              CustomButton(
                text: "Criar Conta", 
                onTap: () => Navigator.pushNamed(context, AppRoutes.signUpPage), 
                margin: const EdgeInsets.symmetric(vertical: 10),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: CustomButtonWhite(
                  text: "Seguir sem login", 
                  onTap: () => Navigator.pushNamed(context, AppRoutes.navigationBar)
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}