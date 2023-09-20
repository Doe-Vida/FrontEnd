import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_icons.dart';
import 'package:front_end/views/widgets/appbars/custom_appbar.dart';
import 'package:front_end/views/widgets/buttons/custom_button.dart';
import 'package:front_end/views/widgets/textboxes/custom_textbox.dart';

import '../../../widgets/textboxes/custom_textfield.dart';

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
      appBar: CustomAppBar(
        title: "Login",
        iconRight: AppIcons.arrowBack(),
        onPressedIconRight: () {},
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset("assets/images/doctors.png"),
            CustomTextField(
              controller: emailController,
              hintText: "E-mail",
              isPassword: true,
              prefixIcon: AppIcons.mail(AppColors.GRAY300, 10),
              keyboardType: TextInputType.emailAddress,
              margin: const EdgeInsets.only(top: 20),
            ),
            //TextBox senha
            //Text esqueceu senha
            CustomButton(text: "Entrar", onTap: () {})
          ],
        ),
      ),
    );
  }
}
