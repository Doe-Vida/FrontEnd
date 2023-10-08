import 'dart:math';

import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_icons.dart';
import 'package:front_end/constants/app_images.dart';
import 'package:front_end/constants/app_routes.dart';
import 'package:front_end/views/widgets/appbars/custom_appbar.dart';
import 'package:front_end/views/widgets/buttons/custom_button.dart';
import 'package:front_end/views/widgets/textboxes/custom_textbox.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    
    return Scaffold(
      appBar: CustomAppBar(
        title: "Criar Conta",
        iconLeft: AppIcons.arrowBack(),
        onPressedIconLeft: () => Navigator.pop(context),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(AppImages.DOCTOR, height: screenSize.height * 0.4,),
            CustomTextBox(
              controller: emailController,
              hintText: "E-mail",
              prefixIcon: AppIcons.mail(AppColors.GRAY300),
              keyboardType: TextInputType.emailAddress,
              margin: const EdgeInsets.symmetric(vertical: 20),
            ),
            //TextBox senha
            //TextBox confirmar senha
            CustomButton(text: "Entrar", onTap: () => Navigator.pushNamed(context, AppRoutes.navigationBar))
          ],
        ),
      ),
    );
  }
}
