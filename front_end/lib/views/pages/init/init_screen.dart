import 'package:flutter/material.dart';
import 'package:front_end/views/widgets/buttons/custom_button.dart';
import 'package:front_end/views/widgets/buttons/custom_button_white.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/donation.png"),
              CustomButton(text: "Login", onTap: (){}),
              CustomButton(
                text: "Criar Conta", 
                onTap: (){}, 
                margin: const EdgeInsets.symmetric(vertical: 15),
              ),
              CustomButtonWhite(text: "Seguir sem login", onTap: (){})
            ]
          ),
        ),
      ),
    );
  }
}