import 'package:flutter/material.dart';
import 'package:front_end/views/pages/custom_navigation_bar_new.dart';
import 'package:front_end/views/widgets/appbars/custom_appbar.dart';
import 'package:front_end/views/widgets/buttons/custom_button.dart';
import 'package:front_end/views/widgets/buttons/custom_button_add.dart';
import 'package:front_end/views/widgets/cards/card_blood_type.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_icons.dart';
import 'package:front_end/views/widgets/textboxes/custom_textbox.dart';

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
      home: const CustomNavigationBarNew(),
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int doadores = 0;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final dateController = TextEditingController();

  void aumentar() {
    setState(() {
      doadores++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "Criar conta",
          backgroundColor: AppColors.PINK_PRIMARY,
          iconLeft: AppIcons.arrowBack(),
        ),
        body: Center(
          child: Form(
            //acessa todos os métodos de validação
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomTextBox(
                  controller: emailController,
                  hintText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  margin: const EdgeInsets.all(20),
                  //prefixIcon: AppIcons.mail,
                ),

                /*CustomTextBox(
                  controller: dateController, 
                  hintText: "Data nascimento", 
                  keyboardType: TextInputType.emailAddress,  
                  margin: const EdgeInsets.all(20),
                ),*/

                CardBloodType(
                    bloodType: "A", bloodDonors: "A, B", bloodRecipients: "C"),

                CustomButton(
                    text: "Entrar",
                    onTap: () {
                      final form = formKey.currentState!;

                      if (form.validate()) {
                        final email = emailController.text;
                        ScaffoldMessenger.of(context)
                          ..removeCurrentSnackBar()
                          ..showSnackBar(
                              SnackBar(content: Text('Email: $email')));
                      }
                    }),

                //Text(doadores.toString()),
                //const CardBloodType(bloodType: "AB+", bloodDonors: "A+, AB+", bloodRecipients: "A+, A-, O+, O-")
              ],
            ),
          ),
        ),
        floatingActionButton: CustomButtonAdd(
          onPressed: aumentar,
        ));
  }
}
