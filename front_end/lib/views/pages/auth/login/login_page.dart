import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_icons.dart';
import 'package:front_end/constants/app_images.dart';
import 'package:front_end/constants/app_routes.dart';
import 'package:front_end/views/widgets/appbars/custom_appbar.dart';
import 'package:front_end/views/widgets/buttons/custom_button.dart';

import '../../../widgets/textboxes/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        title: "Login",
        iconLeft: AppIcons.arrowBack(),
        onPressedIconLeft: () => Navigator.pop(context),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(AppImages.DOCTORS, height: screenSize.height * 0.4,),
            CustomTextField(
              controller: emailController,
              hintText: "E-mail",
              isPassword: true,
              prefixIcon: AppIcons.mail(AppColors.GRAY300, 20),
              keyboardType: TextInputType.emailAddress,
              margin: const EdgeInsets.symmetric(vertical: 20),
            ),
            //TextBox senha
            //Text esqueceu senha
            CustomButton(
              text: "Entrar", 
              onTap: () => Navigator.pushNamed(context, AppRoutes.navigationBar)
            )
          ],
        ),
      ),
    );
  }
}
