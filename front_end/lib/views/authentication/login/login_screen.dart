import 'package:flutter/material.dart';
import 'package:front_end/views/shared/themes/app_icons.dart';
import 'package:front_end/views/shared/widgets/appbars/appbar_widget.dart';
import 'package:front_end/views/shared/widgets/buttons/button_widget.dart';
import 'package:front_end/views/shared/widgets/textboxes/textbox_widget.dart';

import '../../shared/themes/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
         title: "Login", 
         iconRight: AppIcons.arrowBack(),
         onPressedIconRight: (){},
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset("assets/images/doctors.png"),
            TextBoxWidget(
              controller: emailController, 
              hintText: "E-mail",
              prefixIcon: AppIcons.mail(AppColors.gray300), 
              keyboardType: TextInputType.emailAddress,
              margin: const EdgeInsets.only(top: 20),
            ), 
            //TextBox senha
            //Text esqueceu senha
            ButtonWidget(text: "Entrar", onTap: (){})
          ],
        ),
      ),
    );
  }
}