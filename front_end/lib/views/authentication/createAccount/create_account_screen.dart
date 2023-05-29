import 'package:flutter/material.dart';

import '../../shared/themes/app_colors.dart';
import '../../shared/themes/app_icons.dart';
import '../../shared/widgets/appbars/appbar_widget.dart';
import '../../shared/widgets/buttons/button_widget.dart';
import '../../shared/widgets/textboxes/textbox_widget.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
         title: "Criar Conta", 
         iconRight: AppIcons.arrowBack(),
         onPressedIconRight: (){},
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset("assets/images/doctor.png"),
            TextBoxWidget(
              controller: emailController, 
              hintText: "E-mail",
              prefixIcon: AppIcons.mail(AppColors.gray300), 
              keyboardType: TextInputType.emailAddress,
              margin: const EdgeInsets.only(top: 20),
            ), 
            //TextBox senha
            //TextBox confirmar senha
            ButtonWidget(text: "Entrar", onTap: (){})
          ],
        ),
      ),
    );
  }
}