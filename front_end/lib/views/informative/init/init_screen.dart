import 'package:flutter/material.dart';
import 'package:front_end/views/shared/widgets/buttons/button_white_widget.dart';
import 'package:front_end/views/shared/widgets/buttons/button_widget.dart';

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
              ButtonWidget(text: "Login", onTap: (){}),
              ButtonWidget(
                text: "Criar Conta", 
                onTap: (){}, 
                margin: const EdgeInsets.symmetric(vertical: 15),
              ),
              ButtonWhiteWidget(text: "Seguir sem login", onTap: (){})
            ]
          ),
        ),
      ),
    );
  }
}