import 'package:flutter/material.dart';
import 'package:front_end/views/shared/widgets/buttons/button_white_widget.dart';
import 'package:front_end/views/shared/widgets/buttons/button_widget.dart';
import 'package:front_end/views/shared/widgets/cards/card_blood_type.dart';
import 'package:front_end/views/shared/widgets/textboxes/textbox_widget.dart';
import 'package:front_end/views/shared/themes/app_colors.dart';
import 'package:front_end/views/shared/themes/app_icons.dart';
import 'package:front_end/views/shared/widgets/appbars/appbar_widget.dart';
import 'package:front_end/views/shared/widgets/buttons/button_add_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: AppColors.pinkPrimary,
      home: MyHomePage(title: 'Flutter Demo Home Page ihuuu'),
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
      
        appBar: AppBarWidget(
          title: "Criar conta", 
          backgroundColor: AppColors.pinkPrimary,
          iconLeft: AppIcons.arrowBack(),
        ),
        body: Center(
          
          child: Form( //acessa todos os métodos de validação
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextBoxWidget(
                  controller: emailController, 
                  hintText: "Email", 
                  keyboardType: TextInputType.emailAddress,  
                  margin: const EdgeInsets.all(20),
                  //prefixIcon: AppIcons.mail,
                ),

                /*TextBoxWidget(
                  controller: dateController, 
                  hintText: "Data nascimento", 
                  keyboardType: TextInputType.emailAddress,  
                  margin: const EdgeInsets.all(20),
                ),*/

                CardBloodType(bloodType: "A", bloodDonors: "A, B", bloodRecipients: "C"),

                ButtonWidget(text: "Entrar", onTap: (){
                    final form = formKey.currentState!;

                    if (form.validate())
                    {
                        final email = emailController.text;
                        ScaffoldMessenger.of(context)
                        ..removeCurrentSnackBar()
                        ..showSnackBar(SnackBar(content: Text('Email: $email')));
                    }
                }),

                //Text(doadores.toString()),
                //const CardBloodType(bloodType: "AB+", bloodDonors: "A+, AB+", bloodRecipients: "A+, A-, O+, O-")
              ],
            ),
          ),
        ),
        floatingActionButton: ButtonAddWidget(
          onPressed: aumentar,
        ));
  }
}
