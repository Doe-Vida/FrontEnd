import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_icons.dart';
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
    return Scaffold(
      appBar: CustomAppBar(
        title: "Criar Conta",
        iconRight: AppIcons.arrowBack(),
        onPressedIconRight: () {},
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset("assets/images/doctor.png"),
            CustomTextBox(
              controller: emailController,
              hintText: "E-mail",
              prefixIcon: AppIcons.mail(AppColors.GRAY300),
              keyboardType: TextInputType.emailAddress,
              margin: const EdgeInsets.only(top: 20),
            ),
            //TextBox senha
            //TextBox confirmar senha
            CustomButton(text: "Entrar", onTap: () {})
          ],
        ),
      ),
    );
  }
}
